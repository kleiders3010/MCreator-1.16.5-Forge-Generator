if (world.isRemote()) {
		Minecraft.getInstance().getTextureManager().bindTexture(new ResourceLocation(${input$newtexture}));
			Minecraft.getInstance().getTextureManager().loadTexture(new ResourceLocation(${input$texturetochange}),
					Minecraft.getInstance().getTextureManager().getTexture(new ResourceLocation(${input$newtexture})));
}