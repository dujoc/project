/**
 * exam.js
 * 
 * @author Dujo Choi
 * @since 17.11.03
 * @version 1.0
 */

var $const = {
		
		NULL		:	null,
		UNDEFINED	:	(void 0),
		STRING		:	"",
		
		// 타입 정의
		TYPE : {
			NULL			:	'null',
			UNDEFINED		:	'undefined',
			BOOLEAN			:	'boolean',
			NUMBER			:	'number',
			STRING			:	'string',
			OBJECT			:	'object'
		},
		
		// 오브젝트 정의
		CLASS : {
			BOOLEAN			:	'[object Boolean]',
			NUMBER			:	'[object Number]',
			STRING			:	'[object String]',
			UNDEFINED		:	'[object Undefined]',
			FUNCTUION		:	'[object Function]',
			CONSTRUCTOR		:	'[object Constructor]',
			OBJECT			:	'[object Object]',
			ARRAY			:	'[object Array]',
			DATE			:	'[object Date]',
			ELEMENTS		:	[ 
									'[object HTMLImageElement]',
									'[object HTMLDivElement]',
									'[object HTMLAnchorElement]',
									'[object HTMLTableSectionElement]'
								]
		}
};

/*
 * Object
 */
(function(){
	
	function type(obj){
		switch(obj){
			case $const.NULL:
				return $const.TYPE.NULL
			case $const.UNDEFINED:
				return $const.TYPE.UNDEFINED
		}
		
		var type = typeof obj;
		
		switch(type){
			case $const.TYPE.STRING:
			case $const.TYPE.NUMBER:
			case $const.TYPE.BOOLEAN:
				return type;
		}
		return $const.TYPE.OBJECT;	
	};
	function extend(obj, source, cover){
		if(!is(obj)) return obj;

		(cover === $const.UNDEFINED) &&
		(cover = true);

		for(var src in source){
			if(obj[src] && (!cover)) continue;
			obj[src] = source[src];
		}
		return obj;
	};
	//@Override
	function keys(obj){
		if(!is(obj)){ return obj; };

		var own = this.prototype.hasOwnProperty, results = [];

		for(var o in obj){
			if(own.call(obj, o))
				results.push(o)
		}
		return results;
	};
	function is(obj){
		return isType(obj, $const.TYPE.OBJECT);
	};
	var isType = function(obj, typ){
		return type(obj) === typ;
	};
	function isClass(dest, clss){
		return this.prototype.toString.call(dest) === clss;
	};
	function isDefined(dest){
		return dest !==  null &&
		           dest !==  $const.UNDEFINED;
	}
	function isEqual(dest, compare){
		return dest === compare;
	};
	function each(obj, func){
		if(!this.is(obj)) return false;

		var 	own = this.prototype.hasOwnProperty,
				rst = true;

		for(var o in obj){
			if(own.call(obj, o)){
				rst=func.apply(obj, [o, obj]);
				if(Undefined.is(rst)){
					rst = true;
				}else{
					break;
				};
			};
		};
		return rst
	};
	//@Override
	function create(obj){
		var emp = function(){};
		emp.prototype = obj||{};
		return new emp;
	};
	function empty(){
		return this.create();
	};
	function clone(obj, deep){
		if(!(obj instanceof Object)){
			return obj;
		}

		var oclone, constructor = obj.constructor, args = arguments;

		switch(constructor){
			case RegExp :
				oclone = new constructor(obj);
				break;
			case Date :
				oclone = new constructor(obj.getTime());
				break;
			default :
				oclone = new constructor();
		}

		if(deep){
			var self = this;
			self.each(obj, function(ix, im){
				oclone[ix] = args.callee.call(self, im[ix], deep);
			})
		}
		return oclone;
	};

	function clone2(obj, dest, step, stop){
		if(!Object.is(obj)) return obj;

		dest||(dest=(Array.is(obj)?[]:{}));
		step||(step=1);

		if(step){
			(stop&&(stop=stop+1))||(stop=1);
		};

		var item, value, args = arguments;

		Object.each(obj, function(ix, im){
			item = im[ix];

			if(im.hasOwnProperty(ix)){
				if(item instanceof Object){
					if(step>=stop){
						dest[ix] = args.callee(item, null, step, stop);
					} else {
						dest[ix] = item;
					};
				} else if(item instanceof Array) {
					for(var i=0, len=item.length; len>i; i++){
						if(Object.is(item[i]) && step>=stop){
							value = args.callee(item[i], null, step, stop);
						} else {
							value =  item[i];
						};
						dest[ix].push(value);
					};
				} else if(item instanceof Date) {
					value = new Date();
					value.setTime(item.getTime());
					dest[ix] = value;
				} else {		//String, Number, Boolean
					dest[ix] = item;
				};
			}
		});
		return dest;
	};


	function isEmpty(obj){
		return 	this.keys(obj).length === 0;
	}

	function keyFromString(obj, str){
		if(this.is(obj)&&String.is(str)){
			for(var ix in obj){
				if(str.isIndex(ix)){
					return ix;
				}
			};
		};
		return null;
	};

	function setIndex(){
		var args = $to.array(arguments), len = args.length, idx;

		for(var i=0; len>i; i++){
			idx = 0;
			this.each(args[i], function(ix, im){
				args[i][idx++] = ix;
			})
			args[i].length = idx;
		};
	};

	extend(Object, {	extend			:	extend ,
						keys			:	keys,
						type			:	type,
						is				:	is,
						isType			:	isType,
						isClass			:	isClass,
						isDefined		:	isDefined,
						isEqual			:	isEqual,
						isEmpty			:	isEmpty,
						keyFromString	:	keyFromString,
						each			:	each,
						create			:	create,
						empty			:	empty,
						clone			:	clone,
						clone2			: 	clone2,
						setIndex		: 	setIndex
					});
})();

/*
 * Array
 */
Object.extend(Array, (function() {
	function is(dest){
		return Object.isClass(dest, $const.CLASS.ARRAY);
	};

	function indexsFromClass(arry, cls){
		var idxs = [];

		if(is(arry)&&String.is(cls)){
			cls.replace(/(\S+)/ig, function(match, p1){
				for(var i=0, len=arry.length; i<len; i++){
					if(p1.isEqual(arry[i])){
						idxs.push(i);
					};
				}
			});
		};
		return idxs;
	};

	function remove(arry, item){
		return arry&&this.find(arry, function(elem, idx){
						if(item.isEqual(elem)){
							removeIndex(this, idx);
							return true;
						}
						return false;
				})
	};

	function removeIndex(arry, idx){
		delete arry[idx];
		arry.splice(idx, 1);
	}

	function find(arry, predicate){
		if(!Function.is(predicate)){
			console.error('predicate must be a exam.js');
			return;
		}

		var	len = arry.length, value;

		for (var i = 0; i<len; i++) {
			value = arry[i];
			if (predicate.call(arry, value, i)) return value;
		}
		return $const.UNDEFINED;
	};

	function shift(arry){
		return arry&&arry.length>1&&arry.shift();
	};

	return {	is					:	is,
				indexsFromClass		:	indexsFromClass,
				remove				:	remove,
				removeIndex			:	removeIndex,
				find				:	find,
				shift				:	shift};
})());
