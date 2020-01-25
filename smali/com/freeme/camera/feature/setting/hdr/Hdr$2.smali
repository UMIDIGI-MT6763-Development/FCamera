.class Lcom/freeme/camera/feature/setting/hdr/Hdr$2;
.super Ljava/lang/Object;
.source "Hdr.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/hdr/Hdr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/hdr/Hdr;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/hdr/Hdr;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr$2;->this$0:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    invoke-static {}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[onPreviewStarted] +"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr$2;->this$0:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->access$500(Lcom/freeme/camera/feature/setting/hdr/Hdr;)Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr$2;->this$0:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->access$500(Lcom/freeme/camera/feature/setting/hdr/Hdr;)Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;->onPreviewStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    invoke-static {}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[onPreviewStopped] +"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr$2;->this$0:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->access$500(Lcom/freeme/camera/feature/setting/hdr/Hdr;)Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr$2;->this$0:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->access$500(Lcom/freeme/camera/feature/setting/hdr/Hdr;)Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;->onPreviewStateChanged(Z)V

    :cond_0
    return-void
.end method
