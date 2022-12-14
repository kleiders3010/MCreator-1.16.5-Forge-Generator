@Mod.EventBusSubscriber private static class GlobalTrigger {
	@SubscribeEvent public static void onItemDestroyed(PlayerDestroyItemEvent event) {
		Entity entity=event.getPlayer();
		double i=entity.getPosX();
		double j=entity.getPosY();
		double k=entity.getPosZ();
		ItemStack itemstack=event.getOriginal();
		Map<String, Object> dependencies = new HashMap<>();
		dependencies.put("x",i);
		dependencies.put("y",j);
		dependencies.put("z",k);
		dependencies.put("world",entity.world);
		dependencies.put("entity",entity);
		dependencies.put("event",event);
		dependencies.put("itemstack",itemstack);
		executeProcedure(dependencies);
	}
}