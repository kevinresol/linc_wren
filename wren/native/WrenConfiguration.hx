package wren.native;

import cpp.ConstCharStar;
import cpp.Callable;
import cpp.SizeT;
import cpp.Star;


@:structAccess
@:native('WrenConfiguration')
@:include('linc_wren.h')
extern class WrenConfiguration {
	// TODO: WrenReallocateFn reallocateFn
	// TODO: WrenResolveModuleFn resolveModuleFn
	var loadModuleFn:WrenLoadModuleFn;
	var bindForeignMethodFn:WrenBindForeignMethodFn;
	var bindForeignClassFn:WrenBindForeignClassFn;
	var writeFn:WrenWriteFn;
	var errorFn:WrenErrorFn;
	var initialHeapSize : SizeT;
	var minHeapSize : SizeT;
	var heapGrowthPercent : Int;
	var userData: Star<cpp.Void>;
	
	@:native('linc::wren::initConfiguration')
	static function init():WrenConfiguration;
}