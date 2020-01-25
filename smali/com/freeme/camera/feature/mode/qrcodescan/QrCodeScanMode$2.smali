.class Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$2;
.super Landroid/os/Handler;
.source "QrCodeScanMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$2;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$2;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$1700(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)V

    :goto_0
    return-void
.end method
