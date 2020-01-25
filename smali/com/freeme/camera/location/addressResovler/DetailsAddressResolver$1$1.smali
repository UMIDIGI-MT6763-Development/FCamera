.class Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$1$1;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$1;->onFutureDone(Lcom/freeme/camera/location/addressResovler/utils/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$1;

.field final synthetic val$future:Lcom/freeme/camera/location/addressResovler/utils/Future;


# direct methods
.method constructor <init>(Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$1;Lcom/freeme/camera/location/addressResovler/utils/Future;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$1$1;->this$1:Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$1;

    iput-object p2, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$1$1;->val$future:Lcom/freeme/camera/location/addressResovler/utils/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$1$1;->this$1:Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$1;

    iget-object v0, v0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$1;->this$0:Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;

    iget-object v1, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$1$1;->val$future:Lcom/freeme/camera/location/addressResovler/utils/Future;

    invoke-interface {v1}, Lcom/freeme/camera/location/addressResovler/utils/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-static {v0, v1}, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;->access$100(Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;Landroid/location/Address;)V

    return-void
.end method
