.class public Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;
.super Ljava/lang/Object;
.source "MatrixDisplayExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt$EffectAvailableCallback;
    }
.end annotation


# static fields
.field private static sMatrixDisplayExt:Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;


# instance fields
.field private mCallback:Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt$EffectAvailableCallback;

.field private mMatrixEffect:Lcom/mediatek/matrixeffect/MatrixEffect;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mediatek/matrixeffect/MatrixEffect;->getInstance()Lcom/mediatek/matrixeffect/MatrixEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;->mMatrixEffect:Lcom/mediatek/matrixeffect/MatrixEffect;

    return-void
.end method

.method public static getInstance()Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;
    .locals 1

    sget-object v0, Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;->sMatrixDisplayExt:Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;

    invoke-direct {v0}, Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;-><init>()V

    sput-object v0, Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;->sMatrixDisplayExt:Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;

    :cond_0
    sget-object v0, Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;->sMatrixDisplayExt:Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;

    return-object v0
.end method


# virtual methods
.method public initialize(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;->mMatrixEffect:Lcom/mediatek/matrixeffect/MatrixEffect;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/matrixeffect/MatrixEffect;->initialize(IIII)V

    return-void
.end method

.method public process([B[I)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;->mMatrixEffect:Lcom/mediatek/matrixeffect/MatrixEffect;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/matrixeffect/MatrixEffect;->process([B[I)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;->mMatrixEffect:Lcom/mediatek/matrixeffect/MatrixEffect;

    invoke-virtual {v0}, Lcom/mediatek/matrixeffect/MatrixEffect;->release()V

    return-void
.end method

.method public setBuffers(II[[B)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;->mMatrixEffect:Lcom/mediatek/matrixeffect/MatrixEffect;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/matrixeffect/MatrixEffect;->setBuffers(II[[B)V

    return-void
.end method

.method public setCallback(Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt$EffectAvailableCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;->mCallback:Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt$EffectAvailableCallback;

    iget-object p1, p0, Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;->mCallback:Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt$EffectAvailableCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt$EffectAvailableCallback;->onEffectAvailable()V

    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;I)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/camera/matrixdisplay/ext/MatrixDisplayExt;->mMatrixEffect:Lcom/mediatek/matrixeffect/MatrixEffect;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/matrixeffect/MatrixEffect;->setSurface(Landroid/view/Surface;I)V

    return-void
.end method
