.class public interface abstract Lcom/mediatek/plugin/parallel/FutureListener;
.super Ljava/lang/Object;
.source "FutureListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFutureDone(Lcom/mediatek/plugin/parallel/Future;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/plugin/parallel/Future<",
            "TT;>;)V"
        }
    .end annotation
.end method
