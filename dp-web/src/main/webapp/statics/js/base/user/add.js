/**
 * 新增-用户管理js
 */
var doublebox = null;

var vm = new Vue({
	el:'#dpLTE',
	data: {
		roleList:[],
		user:{
			status: 1,
			roleIdList:[]
		}
	},
	methods : {
		getRoleList: function(){
			$.get('../../sys/role/select?_' + $.now(), function(r){
				vm.roleList = r.rows;
                doublebox = $('.rolebox').doublebox({
                    selectorMinimalHeight: 187,
                    filterPlaceHolder: '关键字...',
                    preserveSelectionOnMove: 'moved',
                    moveOnSelect: false,
                    nonSelectedList: vm.roleList,
                    selectedList:null,
                    optionValue:"roleId",
                    optionText:"roleName",
                    doubleMove:true
                });
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
		    $.SaveForm({
		    	url: '../../sys/user/save?_' + $.now(),
		    	param: vm.user,
		    	success: function(data) {
		    		$.currentIframe().vm.load();
		    	}
		    });
		}
	},
	created : function() {
		this.getRoleList();
	}
})
