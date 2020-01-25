.class public Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;
.super Ljava/lang/Object;
.source "MipMapGenerator.java"


# static fields
.field private static useHWMipMap:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateMipMap(ILcom/badlogic/gdx/graphics/Pixmap;II)V
    .locals 2

    sget-boolean v0, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->useHWMipMap:Z

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMapCPU(ILcom/badlogic/gdx/graphics/Pixmap;II)V

    return-void

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMapDesktop(ILcom/badlogic/gdx/graphics/Pixmap;II)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMapGLES20(ILcom/badlogic/gdx/graphics/Pixmap;)V

    :goto_1
    return-void
.end method

.method public static generateMipMap(Lcom/badlogic/gdx/graphics/Pixmap;II)V
    .locals 1

    const/16 v0, 0xde1

    invoke-static {v0, p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMap(ILcom/badlogic/gdx/graphics/Pixmap;II)V

    return-void
.end method

.method private static generateMipMapCPU(ILcom/badlogic/gdx/graphics/Pixmap;II)V
    .locals 24

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v9

    const/4 v2, 0x0

    const/4 v6, 0x0

    move/from16 v1, p0

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-nez v0, :cond_1

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "texture width and height must be square when using mipmapping."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {}, Lcom/badlogic/gdx/graphics/Pixmap;->getBlending()Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-static {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    const/4 v3, 0x1

    move v12, v0

    move v13, v1

    move v1, v3

    move-object/from16 v0, p1

    :goto_1
    if-lez v12, :cond_3

    if-lez v13, :cond_3

    new-instance v15, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v4

    invoke-direct {v15, v12, v13, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v15

    move-object v5, v0

    invoke-virtual/range {v4 .. v13}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    if-le v1, v3, :cond_2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    :cond_2
    sget-object v14, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v17

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v18

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v19

    const/16 v20, 0x0

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v21

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v22

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v23

    move-object v0, v15

    move/from16 v15, p0

    move/from16 v16, v1

    invoke-interface/range {v14 .. v23}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    div-int/lit8 v12, v4, 0x2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    div-int/lit8 v13, v4, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    return-void
.end method

.method private static generateMipMapDesktop(ILcom/badlogic/gdx/graphics/Pixmap;II)V
    .locals 11

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v1, "GL_ARB_framebuffer_object"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v1, "GL_EXT_framebuffer_object"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMapCPU(ILcom/badlogic/gdx/graphics/Pixmap;II)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v8

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v9

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v10

    move v2, p0

    invoke-interface/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {p1, p0}, Lcom/badlogic/gdx/graphics/GL20;->glGenerateMipmap(I)V

    :goto_1
    return-void
.end method

.method private static generateMipMapGLES20(ILcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 10

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v3

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v7

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v8

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v9

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v1, p0

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {p1, p0}, Lcom/badlogic/gdx/graphics/GL20;->glGenerateMipmap(I)V

    return-void
.end method

.method public static setUseHardwareMipMap(Z)V
    .locals 0

    sput-boolean p0, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->useHWMipMap:Z

    return-void
.end method
