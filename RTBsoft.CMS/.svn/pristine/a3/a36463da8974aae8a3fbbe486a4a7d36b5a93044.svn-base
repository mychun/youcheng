(function ($) {
	$.fn.parallelRoll = function(options) {
		var opts = $.extend({}, $.fn.parallelRoll.defaults, options);
		var _this = this;
		var l = _this.find(opts.tagName).length;
		if (l <= 7) {
		    return;
		}

		var autoRollTimer;
		var flag = true;
		var arr = new Array();
		if(opts.amount + opts.visual > l) {
			_this[0].innerHTML += _this[0].innerHTML;
			l = 2 * l
		} else { l = l }
		var w = $(opts.tagName).outerWidth(true);
		_this.css({ width: (l * w) + "px" });
		return this.each(function() {
			_this.closest("." + opts.boxName).hover(function() { clearInterval(autoRollTimer) }, function() {
				switch(opts.direction) {
					case "left":
						autoRollTimer = setInterval(function() { left() }, opts.time);
						break;
					case "right":
						autoRollTimer = setInterval(function() { right() }, opts.time);
						break;
					default:
						alert("参数错误！");
						break
				}
			}).trigger("mouseleave");
			$("." + opts.prev).on("click", function() { flag ? left() : "" });
			$("." + opts.next).on("click", function() { flag ? right() : "" })
		});

		function left() {
			flag = false;
			arr = _this.find(opts.tagName).slice(-opts.amount);
			for(var i = 0; i < opts.amount; i++) { $(arr[i]).css({ marginLeft: -w * (i + 1) }).prependTo(_this) } _this.animate({ marginLeft: w * opts.amount }, 1000, function() {
				_this.find(opts.tagName).removeAttr("style");
				_this.css({ marginLeft: 0 });
				flag = true
			})
		}

		function right() {
			flag = false;
			_this.animate({ marginLeft: -(w * opts.amount) }, 1000, function() {
				_this.find(opts.tagName).slice(0, opts.amount).appendTo(_this);
				_this.css({ marginLeft: 0 });
				flag = true
			})
		}
	};
	$.fn.parallelRoll.defaults = { boxName: "friend-cont", tagName: ".roll_l", time: 4000, direction: "right", visual: 4, prev: "b_prev", next: "b_next", amount: 1 }
})(jQuery);