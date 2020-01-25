.class Lcom/freeme/camera/ui/modepicker/ModePickerManager$OnModeSelectedListenerImpl;
.super Ljava/lang/Object;
.source "ModePickerManager.java"

# interfaces
.implements Lcom/freeme/camera/ui/modepicker/ModePickerFragment$OnModeSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/modepicker/ModePickerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnModeSelectedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$OnModeSelectedListenerImpl;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeSelected(Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$OnModeSelectedListenerImpl;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    iget-object v2, p1, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;->mSupportedCameraIds:[Ljava/lang/String;

    iget-object v3, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$OnModeSelectedListenerImpl;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-static {v3}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$400(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$500(Lcom/freeme/camera/ui/modepicker/ModePickerManager;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p1, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;->mSelectedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$OnModeSelectedListenerImpl;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$600(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Lcom/freeme/camera/common/widget/RotateImageView;

    move-result-object v0

    iget-object v1, p1, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;->mSelectedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$OnModeSelectedListenerImpl;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$600(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Lcom/freeme/camera/common/widget/RotateImageView;

    move-result-object v0

    const v1, 0x7f0801bd

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$OnModeSelectedListenerImpl;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    iget-object p1, p1, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$702(Lcom/freeme/camera/ui/modepicker/ModePickerManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$OnModeSelectedListenerImpl;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$800(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Lcom/freeme/camera/ui/modepicker/ModePickerManager$OnModeChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$OnModeSelectedListenerImpl;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->access$700(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager$OnModeChangedListener;->onModeChanged(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
