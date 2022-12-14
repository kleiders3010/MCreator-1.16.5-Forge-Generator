<#include "mcelements.ftl">
<#-- @formatter:off -->
(new Object(){
	public boolean canReceiveEnergy(IWorld world, BlockPos pos) {
		AtomicBoolean _retval = new AtomicBoolean(false);
		TileEntity _ent = world.getTileEntity(pos);
		if (_ent != null)
			_ent.getCapability(CapabilityEnergy.ENERGY, ${input$direction}).ifPresent(capability ->
				_retval.set(capability.canReceive()));
		return _retval.get();
	}
}.canReceiveEnergy(world, ${toBlockPos(input$x,input$y,input$z)}))
<#-- @formatter:on -->