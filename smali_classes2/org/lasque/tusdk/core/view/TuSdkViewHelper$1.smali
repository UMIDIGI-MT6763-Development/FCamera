.class final Lorg/lasque/tusdk/core/view/TuSdkViewHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->alert(Lorg/lasque/tusdk/core/view/TuSdkViewHelper$AlertDelegate;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$AlertDelegate;

.field final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/view/TuSdkViewHelper$AlertDelegate;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkViewHelper$1;->a:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$AlertDelegate;

    iput-object p2, p0, Lorg/lasque/tusdk/core/view/TuSdkViewHelper$1;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkViewHelper$1;->a:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$AlertDelegate;

    if-nez p1, :cond_0

    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p2, p0, Lorg/lasque/tusdk/core/view/TuSdkViewHelper$1;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper$AlertDelegate;->onAlertConfirm(Landroid/app/AlertDialog;)V

    goto :goto_0

    :pswitch_1
    iget-object p2, p0, Lorg/lasque/tusdk/core/view/TuSdkViewHelper$1;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper$AlertDelegate;->onAlertCancel(Landroid/app/AlertDialog;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
