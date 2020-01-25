.class Lcom/freeme/camera/ui/modepicker/ModePickerFragment$1;
.super Ljava/lang/Object;
.source "ModePickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$1;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: mSettingClickedListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$1;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    invoke-static {v2}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->access$100(Lcom/freeme/camera/ui/modepicker/ModePickerFragment;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsClickEnabled = false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$1;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    invoke-static {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->access$200(Lcom/freeme/camera/ui/modepicker/ModePickerFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$1;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    invoke-static {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->access$100(Lcom/freeme/camera/ui/modepicker/ModePickerFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$1;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$1;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    invoke-static {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->access$100(Lcom/freeme/camera/ui/modepicker/ModePickerFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method
