.class Lcom/freeme/camera/feature/setting/whitebalance/RadioPreference$1;
.super Ljava/lang/Object;
.source "RadioPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/whitebalance/RadioPreference;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/whitebalance/RadioPreference;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/whitebalance/RadioPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/whitebalance/RadioPreference$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/RadioPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
