.class public Lcom/freeme/camera/feature/mode/facecute/gdx/helper/GraphicsImpl;
.super Ljava/lang/Object;
.source "GraphicsImpl.java"

# interfaces
.implements Lcom/badlogic/gdx/Graphics;


# instance fields
.field private mGL20Impl:Lcom/freeme/camera/feature/mode/facecute/gdx/helper/GL20Impl;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/GL20Impl;

    invoke-direct {v0}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/GL20Impl;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/GraphicsImpl;->mGL20Impl:Lcom/freeme/camera/feature/mode/facecute/gdx/helper/GL20Impl;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/GraphicsImpl;->mWidth:I

    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/GraphicsImpl;->mHeight:I

    return-void
.end method


# virtual methods
.method public getBufferFormat()Lcom/badlogic/gdx/Graphics$BufferFormat;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeltaTime()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDensity()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDesktopDisplayMode()Lcom/badlogic/gdx/Graphics$DisplayMode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayModes()[Lcom/badlogic/gdx/Graphics$DisplayMode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFrameId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFramesPerSecond()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGL20()Lcom/badlogic/gdx/graphics/GL20;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/GraphicsImpl;->mGL20Impl:Lcom/freeme/camera/feature/mode/facecute/gdx/helper/GL20Impl;

    return-object v0
.end method

.method public getGL30()Lcom/badlogic/gdx/graphics/GL30;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/GraphicsImpl;->mHeight:I

    return v0
.end method

.method public getPpcX()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPpcY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPpiX()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPpiY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRawDeltaTime()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/Graphics$GraphicsType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/GraphicsImpl;->mWidth:I

    return v0
.end method

.method public isContinuousRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGL30Available()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestRendering()V
    .locals 0

    return-void
.end method

.method public resize(II)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/GraphicsImpl;->mWidth:I

    iput p2, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/GraphicsImpl;->mHeight:I

    return-void
.end method

.method public setContinuousRendering(Z)V
    .locals 0

    return-void
.end method

.method public setDisplayMode(IIZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setDisplayMode(Lcom/badlogic/gdx/Graphics$DisplayMode;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVSync(Z)V
    .locals 0

    return-void
.end method

.method public supportsDisplayModeChange()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsExtension(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
