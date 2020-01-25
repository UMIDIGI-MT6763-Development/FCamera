.class Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$1;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"

# interfaces
.implements Lcom/freeme/camera/location/addressResovler/utils/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;->resolveAddress([DLcom/freeme/camera/location/addressResovler/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/freeme/camera/location/addressResovler/utils/FutureListener<",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;


# direct methods
.method constructor <init>(Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$1;->this$0:Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/freeme/camera/location/addressResovler/utils/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freeme/camera/location/addressResovler/utils/Future<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$1;->this$0:Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;->access$002(Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;Lcom/freeme/camera/location/addressResovler/utils/Future;)Lcom/freeme/camera/location/addressResovler/utils/Future;

    invoke-interface {p1}, Lcom/freeme/camera/location/addressResovler/utils/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$1;->this$0:Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;

    invoke-static {v0}, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;->access$200(Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$1$1;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$1$1;-><init>(Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$1;Lcom/freeme/camera/location/addressResovler/utils/Future;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
