.class public interface abstract Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Job;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Job"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract run(Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$JobContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$JobContext;",
            ")TT;"
        }
    .end annotation
.end method
