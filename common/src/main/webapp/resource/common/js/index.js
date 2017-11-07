/**
 * index.js
 */

var index = {
	findId : function(id) {
		return $('#' + this.jspName + '_' + id);
	},
	init : function(data) {
		this.jspName = data.jspName;
		this.fn.obj = this;
		this.data = data;
		this.bind();
		//this.vue();
	},
	bind : function() {
		var obj = this;
		
		var app = new Vue({
			el : "#test1",
			data : {
				message : '안녕하세요 Vue!' + new Date()
			}
		})
		
		// 이벤트 블라블라
		obj.findId('projectName').click(function() {
			obj.fn.alertTest();
		});

		obj.findId('projectName').append("유치원 프로젝트");
		
		obj.findId('message').click(function() {
			obj.fn.messageBoxOpen();
		});
	},
	fn : {

		// 함수 블라블라
		alertTest : function() {
			var obj = this.obj
			var jspName = obj.data.jspName;

			alert(jspName);
		},
		
		messageBoxOpen : function() {
			var obj = this.obj;
			
		}
	
	},
	vue : function() {

		/**
		 * Actual demo
		 */
		
		var text = "#demo"
			
		var demo = new Vue({

			el : text,

			data : {
				branches : [ 'master', 'dev' ],
				currentBranch : 'master',
				commits : null
			},

			created : function() {
				this.fetchData()
			},

			watch : {
				currentBranch : 'fetchData'
			},

			filters : {
				truncate : function(v) {
					var newline = v.indexOf('\n')
					return newline > 0 ? v.slice(0, newline) : v
				},
				formatDate : function(v) {
					return v.replace(/T|Z/g, ' ')
				}
			},

			methods : {
				fetchData : function() {
					var xhr = new XMLHttpRequest()
					var self = this
					xhr.open('GET',
							'https://api.github.com/repos/vuejs/vue/commits?per_page=3&sha='
									+ self.currentBranch)
					xhr.onload = function() {
						self.commits = JSON.parse(xhr.responseText)
						console.log(self.commits[0].html_url)
					}
					xhr.send()
				}
			}
		})
	}
};