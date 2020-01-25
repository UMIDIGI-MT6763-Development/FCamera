.class Lcom/freeme/camera/feature/setting/hdr/HdrViewController$3;
.super Ljava/lang/Object;
.source "HdrViewController.java"

# interfaces
.implements Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/hdr/HdrViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$3;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutterButtonClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShutterButtonFocus(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$3;->this$0:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->access$700(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onShutterButtonLongPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
