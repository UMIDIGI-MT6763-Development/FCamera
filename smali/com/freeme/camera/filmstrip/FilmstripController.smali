.class public interface abstract Lcom/freeme/camera/filmstrip/FilmstripController;
.super Ljava/lang/Object;
.source "FilmstripController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;
    }
.end annotation


# virtual methods
.method public abstract fling(F)V
.end method

.method public abstract getCurrentId()I
.end method

.method public abstract goToFilmstrip()V
.end method

.method public abstract goToFirstItem()V
.end method

.method public abstract goToFullScreen()V
.end method

.method public abstract goToNextItem()Z
.end method

.method public abstract goToPreviousItem()Z
.end method

.method public abstract inCameraFullscreen()Z
.end method

.method public abstract inFilmstrip()Z
.end method

.method public abstract inFullScreen()Z
.end method

.method public abstract isCameraPreview()Z
.end method

.method public abstract isScaling()Z
.end method

.method public abstract isScrolling()Z
.end method

.method public abstract scroll(F)V
.end method

.method public abstract scrollToPosition(IIZ)V
.end method

.method public abstract setDataAdapter(Lcom/freeme/camera/filmstrip/DataAdapter;)V
.end method

.method public abstract setImageGap(I)V
.end method

.method public abstract setListener(Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;)V
.end method

.method public abstract stopScrolling(Z)Z
.end method
