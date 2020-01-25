.class public interface abstract Lcom/freeme/camera/filmstrip/DataAdapter;
.super Ljava/lang/Object;
.source "DataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/filmstrip/DataAdapter$Listener;,
        Lcom/freeme/camera/filmstrip/DataAdapter$UpdateReporter;
    }
.end annotation


# virtual methods
.method public abstract canSwipeInFullScreen(I)Z
.end method

.method public abstract getImageData(I)Lcom/freeme/camera/filmstrip/ImageData;
.end method

.method public abstract getItemViewType(I)I
.end method

.method public abstract getTotalNumber()I
.end method

.method public abstract getView(Landroid/content/Context;Landroid/view/View;ILcom/freeme/camera/data/LocalData$ActionCallback;)Landroid/view/View;
.end method

.method public abstract resizeView(Landroid/content/Context;ILandroid/view/View;II)V
.end method

.method public abstract setListener(Lcom/freeme/camera/filmstrip/DataAdapter$Listener;)V
.end method

.method public abstract suggestViewSizeBound(II)V
.end method
