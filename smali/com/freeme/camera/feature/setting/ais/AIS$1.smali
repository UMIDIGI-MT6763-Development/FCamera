.class Lcom/freeme/camera/feature/setting/ais/AIS$1;
.super Ljava/lang/Object;
.source "AIS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/ais/AIS;->addViewEntry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/ais/AIS;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/ais/AIS;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ais/AIS$1;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS$1;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ais/AIS;->access$000(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/feature/setting/ais/AISSettingView;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS$1;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    new-instance v1, Lcom/freeme/camera/feature/setting/ais/AISSettingView;

    invoke-direct {v1}, Lcom/freeme/camera/feature/setting/ais/AISSettingView;-><init>()V

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/ais/AIS;->access$002(Lcom/freeme/camera/feature/setting/ais/AIS;Lcom/freeme/camera/feature/setting/ais/AISSettingView;)Lcom/freeme/camera/feature/setting/ais/AISSettingView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS$1;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ais/AIS;->access$000(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/feature/setting/ais/AISSettingView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ais/AIS$1;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/ais/AISSettingView;->setAisClickListener(Lcom/freeme/camera/feature/setting/ais/AISSettingView$OnAisClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS$1;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ais/AIS;->access$100(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ais/AIS$1;->this$0:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/ais/AIS;->access$000(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/feature/setting/ais/AISSettingView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->addSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method
