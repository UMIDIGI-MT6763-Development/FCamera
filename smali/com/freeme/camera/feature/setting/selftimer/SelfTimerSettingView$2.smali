.class Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView$2;
.super Ljava/lang/Object;
.source "SelfTimerSettingView.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->access$002(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->access$400(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;)Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnValueChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->access$400(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;)Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnValueChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnValueChangeListener;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
