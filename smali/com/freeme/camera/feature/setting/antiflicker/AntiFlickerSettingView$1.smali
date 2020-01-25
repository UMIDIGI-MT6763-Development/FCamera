.class Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView$1;
.super Ljava/lang/Object;
.source "AntiFlickerSettingView.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->loadView(Landroid/preference/PreferenceFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->access$100(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;)Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSelector;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->access$000(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSelector;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->access$100(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;)Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSelector;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->access$200(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->access$300(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSelector;->setEntriesAndEntryValues(Ljava/util/List;Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->access$400(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView$1;->this$0:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->access$100(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;)Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSelector;

    move-result-object v0

    const-string v1, "anti_flicker_selector"

    const v2, 0x7f0901aa

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    const/4 p1, 0x1

    return p1
.end method
