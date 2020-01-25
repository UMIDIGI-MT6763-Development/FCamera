.class public final enum Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FragmentChangeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

.field public static final enum join:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

.field public static final enum push:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

.field public static final enum replace:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

.field public static final enum tansform:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    const-string v1, "join"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;->join:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    new-instance v0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    const-string v1, "push"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;->push:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    new-instance v0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    const-string v1, "tansform"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;->tansform:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    new-instance v0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    const-string v1, "replace"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;->replace:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    sget-object v1, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;->join:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;->push:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;->tansform:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;->replace:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;->a:[Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;->a:[Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    return-object v0
.end method
