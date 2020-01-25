.class Lcom/freeme/camera/feature/setting/iso/ISOSelector$MyOnPreferenceClickListener;
.super Ljava/lang/Object;
.source "ISOSelector.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/iso/ISOSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnPreferenceClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/iso/ISOSelector;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/setting/iso/ISOSelector;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/iso/ISOSelector$MyOnPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/setting/iso/ISOSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/setting/iso/ISOSelector;Lcom/freeme/camera/feature/setting/iso/ISOSelector$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/iso/ISOSelector$MyOnPreferenceClickListener;-><init>(Lcom/freeme/camera/feature/setting/iso/ISOSelector;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISOSelector$MyOnPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/setting/iso/ISOSelector;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/iso/ISOSelector;->access$100(Lcom/freeme/camera/feature/setting/iso/ISOSelector;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISOSelector$MyOnPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/setting/iso/ISOSelector;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/iso/ISOSelector;->access$200(Lcom/freeme/camera/feature/setting/iso/ISOSelector;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISOSelector$MyOnPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/setting/iso/ISOSelector;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/iso/ISOSelector;->access$300(Lcom/freeme/camera/feature/setting/iso/ISOSelector;)Lcom/freeme/camera/feature/setting/iso/ISOSelector$OnItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/feature/setting/iso/ISOSelector$OnItemClickListener;->onItemClick(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISOSelector$MyOnPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/setting/iso/ISOSelector;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/iso/ISOSelector;->access$402(Lcom/freeme/camera/feature/setting/iso/ISOSelector;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/iso/ISOSelector$MyOnPreferenceClickListener;->this$0:Lcom/freeme/camera/feature/setting/iso/ISOSelector;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/iso/ISOSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->popBackStack()V

    const/4 p1, 0x1

    return p1
.end method
