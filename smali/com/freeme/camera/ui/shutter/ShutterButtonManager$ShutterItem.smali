.class Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;
.super Ljava/lang/Object;
.source "ShutterButtonManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/shutter/ShutterButtonManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShutterItem"
.end annotation


# instance fields
.field public mShutterDrawable:Landroid/graphics/drawable/Drawable;

.field public mShutterMode:Ljava/lang/String;

.field public mShutterModeName:Ljava/lang/String;

.field public mShutterName:Ljava/lang/String;

.field public mShutterTitleView:Lcom/freeme/camera/ui/shutter/ShutterTitleView;

.field public mShutterType:Ljava/lang/String;

.field public mShutterView:Lcom/freeme/camera/ui/shutter/ShutterView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/ui/shutter/ShutterButtonManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager$ShutterItem;-><init>()V

    return-void
.end method
