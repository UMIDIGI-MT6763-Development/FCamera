.class Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView$1;
.super Ljava/lang/Object;
.source "WhiteBalanceSettingView.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->loadView(Landroid/preference/PreferenceFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->access$100(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;)Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSelector;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->access$000(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSelector;->setSelectedValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->access$100(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;)Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSelector;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->access$200(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->access$300(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->access$400(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSelector;->setEntriesAndEntryValues(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->access$500(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;->access$100(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;)Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSelector;

    move-result-object v0

    const-string v1, "white_balance_selector"

    const v2, 0x7f0901aa

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    const/4 p1, 0x1

    return p1
.end method
