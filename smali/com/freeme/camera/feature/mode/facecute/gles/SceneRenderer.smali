.class public Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;
.super Ljava/lang/Object;
.source "SceneRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field context:Landroid/content/Context;

.field private mGrassSpriteArray:[Lcom/badlogic/gdx/graphics/g2d/Sprite;

.field private mGrassSpriteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/g2d/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private mGrassTexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private mGrassTexturArray:[Lcom/badlogic/gdx/graphics/Texture;

.field private mIndex:I

.field private mMarkInfo:Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;

.field private mRatio:F

.field private mSize:I

.field private mSpriteBatch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

.field private mTextureIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTextureRect:Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;

.field private mViewportH:I

.field private mViewportW:I

.field private mYuanIndex:I

.field private mYuanSize:I

.field private mYuanTextureIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mIndex:I

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->context:Landroid/content/Context;

    return-void
.end method

.method private ReadTileToBuffer(IIIIILjava/nio/IntBuffer;)Z
    .locals 13

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    aget v3, v1, v2

    const v4, 0x8d40

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v3, 0x8ce0

    const/16 v5, 0xde1

    invoke-static {v4, v3, v5, v2, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v12, p6

    invoke-static/range {v6 .. v12}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return v0
.end method


# virtual methods
.method public getPreviewBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    if-gez p2, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, p2

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    mul-int v8, p3, p4

    invoke-static {v8}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mTextureIdList:Ljava/util/ArrayList;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v1, p0

    move v5, p3

    move v6, p4

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->ReadTileToBuffer(IIIIILjava/nio/IntBuffer;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {v9, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v3, "fotonation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPreviewBitmap read pixel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    new-array v0, v8, [I

    invoke-virtual {v9, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p3, p4, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p4, "fotonation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreviewBitmap createBitmap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :try_start_0
    new-instance p4, Ljava/io/FileOutputStream;

    const-string v0, "/sdcard/screen.png"

    invoke-direct {p4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p4

    invoke-virtual {p4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object p4, v2

    :goto_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p3, v0, v1, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :try_start_1
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p4

    invoke-virtual {p4}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p4, "fotonation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreviewBitmap save Bitmap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-object p3
.end method

.method public nofityCapture()V
    .locals 3

    iget v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mViewportW:I

    iget v1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mViewportH:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->getPreviewBitmap(IIII)Landroid/graphics/Bitmap;

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mMarkInfo:Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x4100

    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    iget p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mViewportW:I

    iget p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mViewportH:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mMarkInfo:Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;

    iget p1, p1, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->leftEye_x:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mMarkInfo:Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;

    iget v0, v0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->rightEye_x:I

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mMarkInfo:Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;

    iget p1, p1, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->leftEye_y:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mMarkInfo:Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;

    iget v0, v0, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->rightEye_y:I

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mSpriteBatch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mGrassSpriteList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    const/4 v0, 0x0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mMarkInfo:Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;

    iget v2, v2, Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;->leftEye_y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setPosition(FF)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mSpriteBatch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mSpriteBatch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    int-to-float p1, p2

    int-to-float v0, p3

    div-float/2addr p1, v0

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mRatio:F

    iput p2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mViewportW:I

    iput p3, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mViewportH:I

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    new-instance p1, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mTextureRect:Lcom/freeme/camera/feature/mode/facecute/gles/TextureRect;

    const/16 p1, 0xb71

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0xbe2

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x302

    const/16 p2, 0x303

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const-string p1, "grass"

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/facecute/gles/TextureUtil;->loadResTexture(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mTextureIdList:Ljava/util/ArrayList;

    const-string p1, "yuan"

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/facecute/gles/TextureUtil;->loadResTexture(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mYuanTextureIdList:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mTextureIdList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mSize:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mTextureIdList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mYuanSize:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mGrassTexList:Ljava/util/List;

    new-instance p1, Lcom/badlogic/gdx/graphics/Texture;

    sget-object p2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v0, "grass/grass_023.png"

    invoke-interface {p2, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mGrassTexList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mGrassSpriteList:Ljava/util/List;

    new-instance p2, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setPosition(FF)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p2, v0, v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setBounds(FFFF)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mGrassSpriteList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mSpriteBatch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    return-void
.end method

.method public setMarkInfo(Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/SceneRenderer;->mMarkInfo:Lcom/freeme/camera/feature/mode/facecute/jni/JniStub$MarkSimpleInfo;

    return-void
.end method
