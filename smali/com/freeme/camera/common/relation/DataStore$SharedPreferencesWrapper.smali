.class Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;
.super Ljava/lang/Object;
.source "DataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/relation/DataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedPreferencesWrapper"
.end annotation


# instance fields
.field private final mScope:Ljava/lang/String;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mValueCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/freeme/camera/common/relation/DataStore;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/relation/DataStore;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;->this$0:Lcom/freeme/camera/common/relation/DataStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;->mValueCache:Ljava/util/Map;

    iput-object p2, p0, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;->mScope:Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;->mScope:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;->getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1

    const-string v0, "_global_scope"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;->this$0:Lcom/freeme/camera/common/relation/DataStore;

    invoke-static {p1}, Lcom/freeme/camera/common/relation/DataStore;->access$000(Lcom/freeme/camera/common/relation/DataStore;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;->openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method private openPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;->this$0:Lcom/freeme/camera/common/relation/DataStore;

    invoke-static {v0}, Lcom/freeme/camera/common/relation/DataStore;->access$000(Lcom/freeme/camera/common/relation/DataStore;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;->this$0:Lcom/freeme/camera/common/relation/DataStore;

    invoke-static {v2}, Lcom/freeme/camera/common/relation/DataStore;->access$100(Lcom/freeme/camera/common/relation/DataStore;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;->mValueCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;->mValueCache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method setValue(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;->mValueCache:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method
