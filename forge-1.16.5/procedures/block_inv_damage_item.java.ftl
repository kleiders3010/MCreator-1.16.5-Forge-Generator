<#include "mcelements.ftl">
<#-- @formatter:off -->
{
	TileEntity _ent = world.getTileEntity(${toBlockPos(input$x,input$y,input$z)});
	if (_ent != null) {
		final int _sltid = (int)(${input$slotid});
		final int _amount = (int) ${input$amount};
		_ent.getCapability(CapabilityItemHandler.ITEM_HANDLER_CAPABILITY, null).ifPresent(capability -> {
			if (capability instanceof IItemHandlerModifiable) {
				ItemStack _stk = capability.getStackInSlot(_sltid).copy();
				if(_stk.attemptDamageItem(_amount, new Random(), null)){
    				_stk.shrink(1);
    				_stk.setDamage(0);
				}
				((IItemHandlerModifiable) capability).setStackInSlot(_sltid, _stk);
			}
		});
	}
}
<#-- @formatter:on -->