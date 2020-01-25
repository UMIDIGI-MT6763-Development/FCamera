.class public Lorg/lasque/tusdk/core/TuSdkIntent;
.super Landroid/content/Intent;


# static fields
.field public static final ACTIVITY_DISMISS_ANIMTYPE:Ljava/lang/String; = "activityDismissAnimType"

.field public static final ACTIVITY_FILP_ACTION:Ljava/lang/String; = "activityFilpAction"

.field public static final ACTIVITY_PRESENT_ANIMTYPE:Ljava/lang/String; = "activityPresentAnimType"

.field public static final FRAGMENT_CLASS:Ljava/lang/String; = "fragmentClass"

.field public static final FRAGMENT_TRANSMITS:Ljava/lang/String; = "fragmentTransmit"

.field public static final WANT_FULL_SCREEN_KEY:Ljava/lang/String; = "wantFullScreen"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getWantFullScreen()Z
    .locals 2

    const-string v0, "wantFullScreen"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/TuSdkIntent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public needTransmitFragment()V
    .locals 2

    const-string v0, "fragmentTransmit"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/TuSdkIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method public setActivityDismissAnimType(Lorg/lasque/tusdk/core/type/ActivityAnimType;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "activityDismissAnimType"

    invoke-interface {p1}, Lorg/lasque/tusdk/core/type/ActivityAnimType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/core/TuSdkIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public setActivityFilp(Z)V
    .locals 1

    const-string v0, "activityFilpAction"

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/core/TuSdkIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method public setActivityPresentAnimType(Lorg/lasque/tusdk/core/type/ActivityAnimType;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "activityPresentAnimType"

    invoke-interface {p1}, Lorg/lasque/tusdk/core/type/ActivityAnimType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/core/TuSdkIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public setFragmentClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "fragmentClass"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/core/TuSdkIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public setWantFullScreen(Z)V
    .locals 1

    const-string v0, "wantFullScreen"

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/core/TuSdkIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method
