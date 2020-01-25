.class Lcom/freeme/camera/location/addressResovler/utils/ThreadPool$JobContextStub;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Lcom/freeme/camera/location/addressResovler/utils/ThreadPool$JobContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/location/addressResovler/utils/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JobContextStub"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/location/addressResovler/utils/ThreadPool$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/location/addressResovler/utils/ThreadPool$JobContextStub;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCancelListener(Lcom/freeme/camera/location/addressResovler/utils/ThreadPool$CancelListener;)V
    .locals 0

    return-void
.end method

.method public setMode(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
