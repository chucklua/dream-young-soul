/**
 * 编辑-用户管理js
 */
var doublebox = null;

var vm = new Vue({
	el:'#dpLTE',
	data: {
		roleList:[],
		selectedList:[],
		nonselectedList:[],
		user:{
			status: 1,
			roleIdList:[]
		}
	},
	methods : {
		getRoleList: function(){
            $.ajax({
                type: 'get',
                async: false,
                contentType : 'application/json',
                url: '../../sys/role/select?_' + $.now(),
                data: null,
                success: function(r) {
                    vm.roleList = r.rows;
                },
                dataType: 'json'
            });
		},
		setForm: function() {
			this.getRoleList();
			$.SetForm({
				url: '../../sys/user/infoUser?_' + $.now(),
		    	param: vm.user.userId,
		    	success: function(data) {
		    		vm.user = data;
		    		for(var i=0; i<vm.user.roleIdList.length; i++){
                        for(var j=0; j<vm.roleList.length; j++){
                        	if(vm.user.roleIdList[i] == vm.roleList[j].roleId){
                        		vm.selectedList.push(vm.roleList[j]);
							}else{
                                vm.nonselectedList.push(vm.roleList[j]);
							}
                        }
					}
                    doublebox = $('.rolebox').doublebox({
                        selectorMinimalHeight: 187,
                        filterPlaceHolder: '关键字...',
                        preserveSelectionOnMove: 'moved',
                        moveOnSelect: false,
                        nonSelectedList: vm.nonselectedList,
                        selectedList:vm.selectedList,
                        optionValue:"roleId",
                        optionText:"roleName",
                        doubleMove:true
                    });
		    	}
			});
		},
		acceptClick: function() {
            var roles = doublebox.getSelectedOptions();
            if(isNullOrEmpty(roles)) {
                dialogMsg('请先选择角色！');
                return false;
            }
            if (!$('#form').Validform()) {
                return false;
            }
            vm.user.roleIdList = [];
            $.each(roles.split(','), function(idx, item){
                vm.user.roleIdList.push(parseInt(item));
            });
		    $.ConfirmForm({
		    	url: '../../sys/user/update?_' + $.now(),
		    	param: vm.user,
		    	success: function(data) {
		    		$.currentIframe().vm.load();
		    	}
		    });
		}
	}
})
