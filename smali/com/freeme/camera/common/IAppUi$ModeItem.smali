.class public Lcom/freeme/camera/common/IAppUi$ModeItem;
.super Ljava/lang/Object;
.source "IAppUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/IAppUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModeItem"
.end annotation


# instance fields
.field public mClassName:Ljava/lang/String;

.field public mMode:Ljava/lang/String;

.field public mModeName:Ljava/lang/String;

.field public mModeSelectedIcon:Landroid/graphics/drawable/Drawable;

.field public mModeUnselectedIcon:Landroid/graphics/drawable/Drawable;

.field public mPriority:I

.field public mShutterIcon:Landroid/graphics/drawable/Drawable;

.field public mSupportedCameraIds:[Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
