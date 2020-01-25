.class public Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;
.super Ljava/lang/Object;
.source "FloatTextureData.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureData;


# instance fields
.field buffer:Ljava/nio/FloatBuffer;

.field height:I

.field isPrepared:Z

.field width:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->width:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->height:I

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->isPrepared:Z

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->width:I

    iput p2, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->height:I

    return-void
.end method


# virtual methods
.method public consumeCustomData(I)V
    .locals 23

    move-object/from16 v0, p0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v2, "texture_float"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v5, 0x0

    const v6, 0x8814

    iget v7, v0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->width:I

    iget v8, v0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->height:I

    const/4 v9, 0x0

    const/16 v10, 0x1908

    const/16 v11, 0x1406

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->buffer:Ljava/nio/FloatBuffer;

    move/from16 v4, p1

    invoke-interface/range {v3 .. v12}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v13, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v15, 0x0

    const/16 v16, 0x1908

    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->width:I

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->height:I

    const/16 v19, 0x0

    const/16 v20, 0x1908

    const/16 v21, 0x1406

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->buffer:Ljava/nio/FloatBuffer;

    move/from16 v14, p1

    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v22, v3

    invoke-interface/range {v13 .. v22}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :goto_1
    return-void

    :cond_2
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Extension OES_TEXTURE_FLOAT not supported!"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "This TextureData implementation does not return a Pixmap"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disposePixmap()Z
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "This TextureData implementation does not return a Pixmap"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->height:I

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->width:I

    return v0
.end method

.method public isManaged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->isPrepared:Z

    return v0
.end method

.method public prepare()V
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->isPrepared:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->width:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->buffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->isPrepared:Z

    return-void

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Already prepared"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public useMipMaps()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
