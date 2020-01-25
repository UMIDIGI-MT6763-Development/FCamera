.class Lcom/freeme/camera/ui/CameraAppUI$OnModeChangedListenerImpl;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/freeme/camera/ui/modepicker/ModePickerManager$OnModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnModeChangedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnModeChangedListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/ui/CameraAppUI$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/CameraAppUI$OnModeChangedListenerImpl;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    return-void
.end method


# virtual methods
.method public onModeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
