.class Lcom/freeme/camera/ui/modepicker/ModePickerManager$3;
.super Ljava/lang/Object;
.source "ModePickerManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/modepicker/ModePickerManager;->updateModePickerView(Lcom/freeme/camera/common/IAppUi$ModeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$3;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$3;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$900(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$3;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$900(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
