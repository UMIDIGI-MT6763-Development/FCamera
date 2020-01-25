.class Lcom/freeme/camera/ui/modepicker/ModePickerFragment$OnViewItemClickListenerImpl;
.super Ljava/lang/Object;
.source "ModePickerFragment.java"

# interfaces
.implements Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$OnViewItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/modepicker/ModePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnViewItemClickListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/modepicker/ModePickerFragment;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/ui/modepicker/ModePickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$OnViewItemClickListenerImpl;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/ui/modepicker/ModePickerFragment;Lcom/freeme/camera/ui/modepicker/ModePickerFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$OnViewItemClickListenerImpl;-><init>(Lcom/freeme/camera/ui/modepicker/ModePickerFragment;)V

    return-void
.end method


# virtual methods
.method public onItemCLicked(Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$OnViewItemClickListenerImpl;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$OnViewItemClickListenerImpl;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    invoke-static {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->access$200(Lcom/freeme/camera/ui/modepicker/ModePickerFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$OnViewItemClickListenerImpl;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    invoke-static {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->access$600(Lcom/freeme/camera/ui/modepicker/ModePickerFragment;)Lcom/freeme/camera/ui/modepicker/ModePickerFragment$OnModeSelectedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$OnModeSelectedListener;->onModeSelected(Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
