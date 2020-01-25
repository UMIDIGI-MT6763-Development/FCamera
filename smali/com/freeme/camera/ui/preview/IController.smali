.class interface abstract Lcom/freeme/camera/ui/preview/IController;
.super Ljava/lang/Object;
.source "IController.java"


# virtual methods
.method public abstract clearPreviewStatusListener(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V
.end method

.method public abstract getPreviewBitmap(I)Landroid/graphics/Bitmap;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract onPause()V
.end method

.method public abstract removeTopSurface()V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
.end method

.method public abstract setOnTouchListener(Landroid/view/View$OnTouchListener;)V
.end method

.method public abstract updatePreviewSize(IILcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V
.end method
