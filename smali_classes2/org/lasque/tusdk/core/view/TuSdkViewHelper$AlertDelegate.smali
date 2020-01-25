.class public abstract Lorg/lasque/tusdk/core/view/TuSdkViewHelper$AlertDelegate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/TuSdkViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AlertDelegate"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlertCancel(Landroid/app/AlertDialog;)V
    .locals 0

    return-void
.end method

.method public abstract onAlertConfirm(Landroid/app/AlertDialog;)V
.end method
