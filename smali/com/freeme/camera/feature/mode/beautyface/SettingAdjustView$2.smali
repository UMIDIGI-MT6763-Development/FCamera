.class Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView$2;
.super Ljava/lang/Object;
.source "SettingAdjustView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->inflateTextRoot(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->access$100(Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->access$002(Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;I)I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->access$200(Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;)I

    move-result p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->access$000(Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->saveLevelIndex(II)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->access$000(Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->access$300(Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->access$400(Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;)Z

    return-void
.end method
