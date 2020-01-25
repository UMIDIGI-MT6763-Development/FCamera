.class Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$1;
.super Ljava/lang/Object;
.source "QrCodeScanMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$1;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$1;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$200(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibilityImmediately(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$1;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$300(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, v2, v1}, Lcom/freeme/camera/common/IAppUi;->setUIVisibilityImmediately(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$1;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$400(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Lcom/freeme/camera/common/IAppUi;->setUIVisibilityImmediately(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$1;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$500(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getShutterButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$1;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$600(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getShutterButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$1;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$700(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getShutterButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$1;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$800(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getIkoTipView()Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x7f0f0169

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$1;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v4}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$900(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v4

    invoke-interface {v4}, Lcom/freeme/camera/common/IAppUi;->getIkoFlashView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v2

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$1;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$1000(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/IAppUi;->getIkoFlashView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$1;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$1200(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/IAppUi;->getIkoFlashView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/widget/RotateImageView;

    invoke-static {v0, v2}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$1102(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;Lcom/freeme/camera/common/widget/RotateImageView;)Lcom/freeme/camera/common/widget/RotateImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$1;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$1100(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/common/widget/RotateImageView;

    move-result-object v0

    const v2, 0x7f080196

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/widget/RotateImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$1;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$1100(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/common/widget/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$1;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$1300(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getIkoTipView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$1;->this$0:Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;->access$1100(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode;)Lcom/freeme/camera/common/widget/RotateImageView;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$1$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$1$1;-><init>(Lcom/freeme/camera/feature/mode/qrcodescan/QrCodeScanMode$1;)V

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
