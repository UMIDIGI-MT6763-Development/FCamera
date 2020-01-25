.class Lcom/freeme/camera/common/storage/StorageServiceImpl$2;
.super Ljava/lang/Object;
.source "StorageServiceImpl.java"

# interfaces
.implements Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/storage/StorageServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/storage/StorageServiceImpl;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/storage/StorageServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl$2;->this$0:Lcom/freeme/camera/common/storage/StorageServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(ILandroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl$2;->this$0:Lcom/freeme/camera/common/storage/StorageServiceImpl;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/StorageServiceImpl;->access$000(Lcom/freeme/camera/common/storage/StorageServiceImpl;)V

    return-void
.end method
