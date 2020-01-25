.class final Lcom/freeme/elementscenter/ui/ECFragmentUtil$3;
.super Ljava/lang/Object;
.source "ECFragmentUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/elementscenter/ui/ECFragmentUtil;->NetWorkStatus(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dlg:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECFragmentUtil$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/freeme/elementscenter/ui/ECFragmentUtil$3;->val$dlg:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECFragmentUtil$3;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECFragmentUtil$3;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
