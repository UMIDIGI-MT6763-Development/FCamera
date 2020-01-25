.class Lorg/lasque/tusdk/impl/activity/TuOnlineFragment$TuSdkOnlineInteface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TuSdkOnlineInteface"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment$TuSdkOnlineInteface;->a:Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;Lorg/lasque/tusdk/impl/activity/TuOnlineFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment$TuSdkOnlineInteface;-><init>(Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;)V

    return-void
.end method


# virtual methods
.method public onTuSdkPush(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment$TuSdkOnlineInteface;->a:Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->a(Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;Ljava/lang/String;)V

    return-void
.end method
