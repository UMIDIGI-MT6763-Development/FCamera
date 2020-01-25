.class public Lcom/freeme/camera/feature/mode/slr/GaussianBlur;
.super Ljava/lang/Object;
.source "GaussianBlur.java"


# instance fields
.field private mRenderScript:Landroid/renderscript/RenderScript;

.field private mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    const-string p1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GaussianBlur,create render:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    sget-object v2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v1, p2, v2, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v3, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v3, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {p2, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    const-string p2, "test"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blurBitmap,render bitmap:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized blurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    sget-object v3, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v2, p1, v3, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    int-to-float p2, p2

    invoke-virtual {v4, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {p2, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {p2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v1, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    const-string p1, "test"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blurBitmap,render bitmap:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1
.end method

.method public destoryBlur()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/slr/GaussianBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    :cond_1
    return-void
.end method

.method public small(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
