.class public interface abstract Lcom/freeme/camera/data/LocalDataAdapter;
.super Ljava/lang/Object;
.source "LocalDataAdapter.java"

# interfaces
.implements Lcom/freeme/camera/filmstrip/DataAdapter;
.implements Lcom/freeme/camera/data/Preloader$ItemLoader;
.implements Lcom/freeme/camera/data/Preloader$ItemSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/data/LocalDataAdapter$LocalDataListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/freeme/camera/filmstrip/DataAdapter;",
        "Lcom/freeme/camera/data/Preloader$ItemLoader<",
        "Ljava/lang/Integer;",
        "Landroid/os/AsyncTask;",
        ">;",
        "Lcom/freeme/camera/data/Preloader$ItemSource<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract addData(Lcom/freeme/camera/data/LocalData;)Z
.end method

.method public abstract executeDeletion()Z
.end method

.method public abstract findDataByContentUri(Landroid/net/Uri;)I
.end method

.method public abstract flush()V
.end method

.method public abstract getLocalData(I)Lcom/freeme/camera/data/LocalData;
.end method

.method public abstract isMetadataUpdated(I)Z
.end method

.method public abstract refresh(Landroid/net/Uri;)V
.end method

.method public abstract removeData(I)V
.end method

.method public abstract requestLoad(Lcom/freeme/camera/util/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freeme/camera/util/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestLoadNewPhotos()V
.end method

.method public abstract setLocalDataListener(Lcom/freeme/camera/data/LocalDataAdapter$LocalDataListener;)V
.end method

.method public abstract undoDataRemoval()Z
.end method

.method public abstract updateData(ILcom/freeme/camera/data/LocalData;)V
.end method

.method public abstract updateMetadata(I)Landroid/os/AsyncTask;
.end method
