<#include "mcelements.ftl">
<#-- @formatter:off -->
(new Object(){
	public int getAmount(IWorld world, BlockPos pos,int sltid) {
		AtomicInteger _retval = new AtomicInteger(0);
		TileEntity _ent = world.getTileEntity(pos);
		if (_ent != null) {
			_ent.getCapability(CapabilityItemHandler.ITEM_HANDLER_CAPABILITY, null).ifPresent(capability -> {
				_retval.set(capability.getStackInSlot(sltid).getCount());
			});
		}
		return _retval.get();
	}
}.getAmount(world, ${toBlockPos(input$x,input$y,input$z)},(int)(${input$slotid})))
<#-- @formatter:on -->