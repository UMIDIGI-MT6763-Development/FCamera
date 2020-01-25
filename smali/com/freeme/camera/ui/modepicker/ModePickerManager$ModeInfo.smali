.class public Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;
.super Ljava/lang/Object;
.source "ModePickerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/modepicker/ModePickerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModeInfo"
.end annotation


# instance fields
.field public mName:Ljava/lang/String;

.field public mSelectedIcon:Landroid/graphics/drawable/Drawable;

.field public mSupportedCameraIds:[Ljava/lang/String;

.field public mUnselectedIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;->this$0:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
