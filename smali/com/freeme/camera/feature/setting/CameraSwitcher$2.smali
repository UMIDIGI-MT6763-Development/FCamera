.class Lcom/freeme/camera/feature/setting/CameraSwitcher$2;
.super Ljava/lang/Object;
.source "CameraSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/CameraSwitcher;->initView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/CameraSwitcher;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/CameraSwitcher;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher$2;->this$0:Lcom/freeme/camera/feature/setting/CameraSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "mtk.camera.switch.camera.debug"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "[onClick], enter debug mode."

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher$2;->this$0:Lcom/freeme/camera/feature/setting/CameraSwitcher;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->access$300(Lcom/freeme/camera/feature/setting/CameraSwitcher;)V

    goto :goto_0

    :cond_0
    const-string p1, "vendor.debug.camera.single_main2"

    invoke-static {p1, v0}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_1

    invoke-static {}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "[onClick], enter main2 debug mode."

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher$2;->this$0:Lcom/freeme/camera/feature/setting/CameraSwitcher;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->access$400(Lcom/freeme/camera/feature/setting/CameraSwitcher;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "[onClick], enter camera normal mode."

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher$2;->this$0:Lcom/freeme/camera/feature/setting/CameraSwitcher;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->access$500(Lcom/freeme/camera/feature/setting/CameraSwitcher;)V

    :goto_0
    return-void
.end method
