.class Lcom/freeme/camera/ui/modepicker/ModePickerFragment$2;
.super Ljava/lang/Object;
.source "ModePickerFragment.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/modepicker/ModePickerFragment;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/modepicker/ModePickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$2;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$2;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    invoke-static {p1}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->access$400(Lcom/freeme/camera/ui/modepicker/ModePickerFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$2;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$2;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    invoke-static {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->access$400(Lcom/freeme/camera/ui/modepicker/ModePickerFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$2;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    invoke-static {v1}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->access$500(Lcom/freeme/camera/ui/modepicker/ModePickerFragment;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateRotateLayoutChildView(Landroid/app/Activity;Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
