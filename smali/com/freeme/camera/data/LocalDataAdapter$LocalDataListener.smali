.class public interface abstract Lcom/freeme/camera/data/LocalDataAdapter$LocalDataListener;
.super Ljava/lang/Object;
.source "LocalDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/data/LocalDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocalDataListener"
.end annotation


# virtual methods
.method public abstract notifyDeleteCompleted()V
.end method

.method public abstract onMetadataUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
