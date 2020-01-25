.class final Lcom/freeme/elementscenter/ui/ECFragmentUtil$4;
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
.field final synthetic val$box:Landroid/widget/CheckBox;

.field final synthetic val$dlg:Landroid/app/AlertDialog;

.field final synthetic val$mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECFragmentUtil$4;->val$box:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/freeme/elementscenter/ui/ECFragmentUtil$4;->val$mSharedPref:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/freeme/elementscenter/ui/ECFragmentUtil$4;->val$dlg:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECFragmentUtil$4;->val$box:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string p1, "zhang"

    const-string v1, "isChecked"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECFragmentUtil$4;->val$mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "gprs"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECFragmentUtil$4;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    invoke-static {v0}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->setContinueState(Z)V

    return-void
.end method
