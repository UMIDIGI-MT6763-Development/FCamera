.class public Lorg/lasque/tusdk/core/network/TuSdkConfigResult;
.super Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public lastUpdatedDate:Ljava/util/Calendar;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "last_updated"
    .end annotation
.end field

.field public masterKey:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "master_key"
    .end annotation
.end field

.field public nextCheckDate:Ljava/util/Calendar;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "next_request"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;-><init>()V

    return-void
.end method
