# 数据沿袭2022年基本指南

> 原文链接：<a target="_blank" href="/posts/2022/The_Essential_Guide_to_Data_Lineage_in_2022.pdf">The Essential Guide to DATA LINEAGE IN 2022</a>

> 翻译日期：2022 年 02 月 26 日

## 什么是数据沿袭?

> What Is Data Lineage?

数据沿袭背后的核心思想是充分理解数据如何在具备数据存储和处理能力的基础设施间从一个系统流转至另一个系统。这似乎不应该是一个困难的问题，但事实确实如此。面对 2022 年及未来，此类问题对组织来说是一个艰难的问题。如果组织不知道他们的数据从哪里来或往哪里去，则由此产生许多不同层面的风险，数据环境的稳定性自然也难以保障。不稳定的数据环境意味着难以从数据中提取价值，而数据就是新型石油或新型黄金。这些没有能力从数据中提取价值的组织很有可能在商业竞争中被那些有能力提取数据价值的组织所取代。

> The core idea behind data lineage is the ability to fully understand how data flows from one place to another within the infrastructure that was built to house and process it. It seems like it should not be a difficult problem, but it is. In fact, it is a huge issue for organizations as they face 2022 and beyond. If organizations do not know where their data comes from or goes, they have uncontrolled environments that have risk on many different levels. Having uncontrolled data environments means that it is also very difficult to extract value from data, and data is the new oil or new gold. Organizations that cannot extract value from data stand a good chance of being outcompeted and replaced by organizations that can.

综观当下，我们的现代技术文明充满了让数据沿袭变得简单的例子。比如炼油厂是一个大型的基础设施，按照精确的规格进行建造，操作人员很清楚地知道那些流水线中的液体产品在发生着什么化学反应、有多么地危险——诚然，极特殊情况下，悲剧还是会时有发生。现代通信网络是复杂工程背景下的一个精妙案例，它由网络运营中心(NOCs)完全控制，电话信号从出发地畅通无阻地传输到目的地。

> Our modern technological civilization is full of examples that would make data lineage seem easy by comparison. An oil refinery is a gigantic piece of infrastructure, built to a precise specification, where the operators know exactly what is happening with the liquid products flowing through it – admittedly with a few very rare, and sometimes tragic, exceptions. Modern telephone networks are another exquisite example of complex engineering, being fully controlled from Network Operating Centers (NOCs) so that calls go through from origin to destination without a hitch.

我们承认数据沿袭是一个很难解决的棘手问题，但数据沿袭到底是什么呢？要回答这个问题，我们想像一下公司防火墙第一道关卡捕获到的数据项，也许它们是正常的数据传输。数据被就地保存并不再维护的时代早已过去，自然而然，这些数据项会被传输到其他数据平台（数据库或文件），防火墙捕获的数据项不断追加，直到某一时刻，这些数据会被处理、转换成一份份数据信息报告，报告主题可能是数据消费平台、操作系统甚至面向客户的应用程序。随着数据项的迁移流转，它可能会被复制，或者被标准化处理，或者被用于统计整体数据环境的指标。上述描述的这些数据项的经历——数据存储在哪里、迁移流转的路径、该过程中数据发生了什么变化，它又如何成为其他数据项的构成部分，以及它在不同数据消费平台中出现的位置——这些内容构成了数据沿袭。

> We can agree that data lineage is a hard problem to solve, but just what is it? To answer this, think of an item of data being captured for the first time within the firewalls of an organization, perhaps via data entry. The days when data stayed put in the same silo where it was first captured are long gone. Inevitably, the item of data will be sent to other data stores (databases or files), and from these to yet more, until finally, our item of data ends up as a piece of information in one or more data consumption platforms such as reports, operational systems or even customer facing applications. As the data item travels it may be replicated, or transformed to standardize it, or used in calculations to generate other data elements that enrich the overall data environment. All of this – where the data is stored, the pathways it travels, the changes that happen to it along the way, how it becomes a constituent of other data, and where it appears in the various data consumption platforms – make up data lineage.

## 理解水平和垂直数据沿袭

> Understanding Horizontal and Vertical Data Lineage

然而，我们需要意识到数据沿袭的另一个特性，即它可以存在于不同的层次，每个层次都有其独有的特点和价值。

> Yet there is another twist to data lineage we need to appreciate. It can exist at different levels, each of which has its own particular characteristics and value.

数据沿袭首先以手工记录入档的方式在系统之间流转，从高度抽象的维度来理解，可以认为这是水平数据沿袭，通常是数据集粒度。它的优点是提供一册大体积的图文，用来展示客户数据在组织系统之间是如何流动的。就目前而言，这类数据对架构师和业务用户有很大的帮助。但是在很多情况下，这些数据无法满足基于某个数据项切入并继续深入挖掘的需求。此时垂直数据沿袭就出现了，对于垂直数据沿袭，我们需要逐层地分析数据细节，直到满足数据分析的目的，即逐列地分析数据（或列数据报告）在迁移过程中的转换处理逻辑。

> Data lineage was first documented manually as overall flows between systems. This high level, known as horizontal data lineage, is usually at the dataset level. It has the advantage of providing a big picture, showing, say, how customer data flows among the organization’s systems. This is of enormous help to architects and business users – as far as it goes. But in many cases, it does not go far enough and there are many times when we need to pick a point in the horizontal data lineage and dig deeper. This is where vertical data lineage comes in. With vertical data lineage, we go through successive layers of detail until we get to the ultimate level, which is column-to-column (or column-to-report element) plus the transformations that happen at each of these units of data movement.

垂直数据沿袭可以回答诸如报表中特定单元项数据值的来源，或者数据值在两列数据之间流转时的计算逻辑等问题。对于某些岗位的人员非常有用，比如 BI 分析师这样试图解决数据报告中指标值异常的人员，或者试图明确平台迁移时数据影响范围的数据分析师。

> Vertical data lineage answers questions such as where a particular data value in a report came from, or how a data value is transformed as it flows between two columns. It is useful to people like BI Analysts trying to solve a report discrepancy, or data analysts trying to understand the true scope of what exists in an environment that is to be migrated to a new platform.

## 数据沿袭与业务流程

> Data Lineage and Business Processes

目前为止，本文已经解释了数据沿袭概念以及如何水平数据沿袭和垂直数据沿袭，并且这些数据行为一直都在系统与数据对象环境中时时刻刻地发生着。此外，数据沿袭还有一个经常被忽视但极其重要的因素，那就是数据沿袭能够解读并体现一个组织中的大多数业务流程。

> So far we have described data lineage and how it can be horizontal and vertical, but this has been done in the context of systems and data objects. But there is another frequently overlooked, but extremely important, aspect of data lineage. Data lineage represents a good deal of the business processes that occur in an organization.

互联网时代之前，组织中的所有业务流程都是人工维护的，将数据信息从一个人（或部门）传递到另一个人。如今，流程处理方式已经全部革新，我们可以 认为 IT 系统已经取代了人工方式进行业务处理，数据沿袭作为新的处理方式在人员或部门之间传输信息。组织应该复盘进行确认通过数据沿袭挖掘业务价值链就是完善业务流程最有效或最高效的处理方式。伴随着 IT 体系框架的持续增长和端对端时序数据的长期累积，不断地增加了实现梳理业务价值链的难度。这些因素与企业的整体业务模型息息相关，这就是为了什么数据沿袭将成为企业战略级的关注方向。

> Long ago, all processes in an organization were manual, and information went from one person, or department, to another where individual people processed it. Today, all that has changed. We can think of systems having replaced the people who did the processing, and data lineage having replaced the ways in which information was sent between people and departments. An organization must ask itself if the business value chain represented by data lineage is the most effective and efficient way to implement business processes that is possible. All too often, organic growth in IT architecture and point-to-point data transfers accumulate over time to distort how business value chains are actually implemented. This is where data lineage becomes a strategic concern for enterprises, closely linked to their overall business model.

事实求是地讲，绝大多数组织在业务战略中使用数据沿袭还有很长地路要摸索。不过，通过技术手段实现的数据沿袭用例依然有非常大的价值（即企业要实现数据沿袭的技术门槛还比较高），我们将继续研究一系列的业务用例，以便更深入地理解数据沿袭是什么以及如何体现它的业务价值。

> Truth be told, most organizations are still a long way off from using data lineage in business strategy. Nevertheless, the more technical use cases for data lineage are still extremely valuable, and we will look at a range of them now to gain a better appreciation of what data lineage is and the value it provides.

### 用例1：报告中数据完整性的保证

> Use Case 1 Assurance of Data Integrity in Reports

数据沿袭令人信服的一个论点是它可以快速打消终端用户对报告数据可靠性的怀疑。

> A compelling argument for the need for data lineage is quickly resolving end-user doubts about the reliability of the data they are seeing in their reports.

许多业务 BI 开发人员以及报告开发人员，总是处于一种恐惧不安的心理状态，担心业务用户要求他们证明数据分析报告中那些奇怪数据的准确性。揭开表象看本质，报告中的数据是否有误并非重点，而是开发人员是否能够在合理的时间内给业务用户一个令人信服的解释——即使报告数据真的出现错误也没关系。开发人员无法及时提供准确性解释，业务用户自然会怀疑他们只看到了报告中错误数据的一部分而已，更没有理由相信他们输出报告时所使用的的整套报告生成系统的准确性。

> Many BI developers, and report developers in the business, live in constant terror of being asked by a business user to confirm the accuracy of some strange “blip” of data that the user is seeing in a report. The most important thing to understand here is that it is not whether there is an error in the report or not that matters. What matters is whether the developer can give the business user a convincing explanation of what is going on within a reasonable time or not – even if it is an error. Failure to deliver a timely explanation inevitably makes the business user suspect that they are only seeing the tip of the iceberg, and they have no reason to trust the whole suite of reports they are working with.

通过数据沿袭，BI 开发人员可以追溯异常数据元素的沿袭，并检查数据沿袭链中的每个节点，以确认数据做了什么计算处理，从而实现解释异常数据元素的目的——无论结论是对或错。

> With data lineage, a BI developer can trace back the lineage of the offending data element and inspect each node in the data lineage chain to determine what is happening. Clarity of the situation – whether good or bad – is achieved.

上述数据沿袭用例关注更多的是技术方面，然而，正如我们日常所经历的数据问题，数据沿继有着更广泛的应用。

> Our first couple of use cases have focused on more technical aspects. However, data lineage has a wider application, as we will now see.

### 用例2：影响分析

> Use Case 2 Impact Analysis

组织中经常有数据变更的情况，但令人头痛的是难以确认数据变更的影响范围。通常解决这类问题的方式是通过描述数据变更细节，并大广泛地询问同事所用的系统是否会受到本次数据变更的影响。确切地讲，这些同事也很难知道他们的系统是否受到影响。不断地询问所有部门的同事是否会受到影响，而绝大多数据情况都不会受到影响，这种跨部门确认数据变更影响范围的方式衍生出组织混乱的风险，从而导致大家对管理数据变更的部门怨声载道。管理数据变更的团队常常敷衍了事，默默地进行数据变更，然后忐忑地静观其他部门是否会受本次数据变更而暴雷。

> Changes involving data objects are frequent in an organization. A major headache is the determination of who may be affected if the change is implemented. One way of approaching this is to describe the change and ask a wide range of staff if they think that something in their area may be affected. Exactly which staff should be asked is difficult to know, because the impact is not known. Continuously asking a very broad range of individuals in an organization if they might be affected, when most of them inevitably will not, risks disruption that will lead to complaints about those managing the proposed change. All too often a team managing a change only makes a perfunctory effort to assess impact, and simply makes the change and waits to see if anyone will complain right away.

数据沿袭在分析数据变更的影响范围时具有巨大的优势。通过分析与该变更数据有交互的业务用户行为，数据沿袭可以确认数据变更影响的下游数据对象。这一点很重要，并非所有数据影响只涉及技术系统或数据本身，也有可能需要业务流程作出相应的适配变更。

> Data lineage is a huge advantage in impact analysis. The data objects downstream of where the change will be implemented are identified, along with the business users who interact with them. This is important because not every impact is a technical system or data impact, and business process changes may be required.

### 用例3：追踪个人信息(PI: Personal Information)

> Use Case 3 Tracking Personal Information (PI)

数据隐私事件的数量在过去几年中呈爆炸式增长，人们普遍担心个人信息(PI)会被政府、公司和犯罪分子窃取滥用。在某些司法管辖区已经颁布了新的相关法律，欧盟的 GDPR 明确要求说明 PI 在数据领域时提供用途说明。

> Data Privacy has exploded in the past few years, with widespread concerns about the misuse of personal information (PI) by governments, corporations, and criminals. New laws have been enacted in several jurisdictions, and the European Union’s GDPR explicitly calls out the need to know where PI is located in the data landscape.

传统确认 PI 数据用途的方式是数据分析，这种方式需要检查每个关系数据库表（或其他非关系数据对象）中的每一列数据，从而推断它是否是 PI。然而，数据沿袭提供了一个更好的解决方案，如果所有的数据流都是已知的，那么数据流路径中任意节点上的一列都可以标识为 PI，那么该路径中的每个节点在逻辑上属于同一份 PI。这使得分析人员可以灵活、快速地识别 PI，因为在任何特定的路径中，这种处理只需要做一次。此外，与传统的数据分析不同的是，数据沿袭可以扩展到数据报告层和数据库层。

> The traditional approach to the need to know where PI is located has been data profiling. This involves examining each column in each relational database table (or other non-relational data objects) to try to infer if it is PI or not. However, data lineage provides a better solution. If all the data flows are known, then if a column at any node in a data flow pathway can be identified as PI, then every node in that pathway is logically the same piece of PI. This makes it scalable to have analysts identify PI, since this only has to be done once in any particular pathway. Furthermore, data lineage extends into reporting layers as well as databases, unlike traditional data profiling.

这意味着，如果我们可以将报表中的数据元素标识为 PI（报表用户应该很容易做到这一点），那么我们就可以在涉及该数据元素的所有沿袭路径中找到 PI 列。另外一个好处是，知道哪些报告包含 PI 可以更容易地管理它们的传播范围——无论在企业内部还是外部。

> This means that if we can identify a data element in a report as PI, which a report user should be easily able to do, then we can find PI columns across all the lineage pathways involving this data element. An added bonus is that knowing what reports contain PI makes it easier to govern their dissemination – both inside and outside the enterprise.

从 PI 分析的角度来看，使用数据沿袭工具控制数据环境是数据治理以及组织遵守任何法律或隐私功能所关注的问题，这说明数据沿袭在 IT 范畴之外也非常有价值。

> Using a data lineage tool to bring a data environment under control from the perspective of PI is a concern of Data Governance and any Legal or Privacy function in an organization. This demonstrates how valuable data lineage can be outside of IT.

### 用例4：中断的 ETL

> Use Case 4 Broken ETL

该用例通常是缺少上述所讨论的数据沿袭能力而导致的非预期结果。ETL（提取-转换-加载）任务在组织中迁移数据时根据业务需求对数据进行重构、丰富和集成。与之密切相关的是 ELT（提取-加载-转换）任务。在 ELT 任务中，从数据源获取到数据并加载到目标数据库中，然后再进行转换处理。对于 ETL 任务，有一种更传统的处理方法是在加载数据之前进行转换处理。我们将使用 “ETL” 概念来涵盖这两种数据处理方法。

> This use case is often a consequence of the lack of implementation of the use case we have just discussed. Extract-Transform-and-Load (ETL) tasks move data around the organization, often reshaping, enriching, and integrating the data as they do so. Closely related is ELT (Extract- Load-and-Transform). In ELT, data is taken from a source, loaded into target database, and then transformed. With ETL, there is a more traditional approach of doing the transformation before loading the data. We shall use “ETL” to cover both approaches.

ETL 作业在生产环境执行时可能会发生中断，这通常是由于上游数据变更而未与相关部门沟通造成的。一旦发生这种情况，IT 部门就要抗着被枪顶着的压力找出 ETL 作业中断的原因，并快速解决。

> ETL jobs sometimes break in production, often as the result of some upstream change that was not communicated. Once this happens IT is under the gun to figure out what happened and fix it.

由于上游的数据变更经常会影响下游的 ETL 任务，因此需要立即验证是否如此。数据沿袭允许 IT 人员回溯 ETL 作业的数据依赖路径。有了这些信息，就可以很轻松地分析并发现这条数据沿袭路径上发生了什么变更，并进行适配性兼容修复。

> Since it is so often the case that an upstream change has broken the ETL, this hypothesis needs to be tested right away. Data lineage allows IT staff to trace back the pathway to the ETL job. With this, it is a comparatively simple job to investigate what if anything has changed in this pathway and fix it.

最重要的是，数据沿袭具备查明到底是哪里出了问题的能力，这意味着可以检测和分析数据问题的根本原因。此时，由于上游数据变更影响下游 ETL 任务的问题并没有得到本质解决，因为在修复 ETL 任务时，也有可能也发生数据变更，从而进一步影响了整个数据体系。因此数据沿袭在根本原因分析和错误修复中发挥的作用不能过度夸大。

> Most importantly, data lineage can pinpoint what is broken. This means that the root cause of the problem can be detected and analyzed. All too often, this is not done, and downstream workarounds are implemented that further distort the overall architecture. The role of data lineage in root cause analysis and error correction cannot be overstated.

### 用例5：应用程序和报告的迁移

> Use Case 5 Migration of Applications and Reports

由于各种原因需要迁移应用程序和报告，期间可能会耗尽硬件或软件资源。新发布的软件产品通常具有非常吸引人的特性，新软件运行使用的频率很高也会导致软件崩溃。然而，现在 IT 服务已经从内部数据中心发展到了云平台，这就是我们将要关注的数据迁移场景。

> Migration of applications and reports is needed for many reasons. Support can run out for hardware or software. A new software product can become available with very attractive features. This is often the case with reporting software which seems to turn over on a very frequent basis. Today, however, there is a generational shift away from on-premise data centers to the Cloud, and this is the example of migration we will focus on.

当从本地数据中心迁移 IT 服务至云平台时，不仅仅需要在云平台中复制数据结构、处理逻辑和报告体系，数据流也需要被复制。这意味着需要理解当前已存在的数据沿袭情况。

> When a migration away from on- premise occurs, there is not simply a need to replicate the data structures, processing logic, and reports in the Cloud. The flow of data also has to be replicated. This means understanding the existing data lineage.

迁移时经常采用 “Left and Shift”（即应用与数据一同迁移至云平台） 的方式，这意味着遗留环境中的数据问题，同样会出现在云平台。这种迁移方式对于希望降低风险并按时交付项目的项目经理和发起人来说是非常有吸引力的。然而，这对成熟企业的长期生存能力是一个非常严重的潜在风险，企业中已经存在了几十年都使用 “Left and Shift" 方式迁移的数据长链，每次迁移时都会累加一个又一个特性及一个又一个特性补丁方案。

> There is an overwhelming temptation to adopt a “lift and shift” approach to migration, meaning that the legacy environment, with all its blemishes, is replicated as closely as possible in the Cloud environment. This is incredibly appealing to project managers and sponsors who want to drive down risk and deliver the project on time. Yet it is a very grave risk to the long-term viability of the mature enterprises that take this approach. A long chain of periodic migrations in an enterprise that has been around for decades heap idiosyncrasy upon idiosyncrasy and workaround upon workaround with each migration.

重点是，成熟企业在迁移过程中应该使用数据沿袭方案来梳理他们的业务流程并进行合理重构。数据沿袭不仅仅是数据流的简单映射——它更是体现了对如何实现业务流程的理解。理想情况下，成熟企业应该通过数据治袭抽象并提炼这些业务流程，然后重新设计它们。

> The point here is that mature enterprises should use data lineage during a migration to understand their business processes and re- engineer them. Data lineage is not just a map of how data flows – it reveals an understanding of how the ultimate business processes have been implemented. Ideally, a mature enterprise will abstract back from the data lineage to what these processes should be today and redesign them.

如上所言，采用数据沿袭的方式进行迁移还具有速度上的优势。特别是在识别数据和报告对象时，能甄别出哪些数据是“死胡同”、那些是无法使用的、这些是非常有用的。迁移时舍弃的数据自然是没有价值的，因此，这些“死胡同”数据和与此相同数据沿袭路径的数据在迁移过程中都要丢弃。

> That said, there are some additional quick wins that can be gained from data lineage during a migration. In particular, identifying data and report objects where data “dead-ends” and which are not used is extremely helpful. There is no point in migrating something that is not used. Thus, these “dead-end” objects and the data lineage pathways to them can be discarded in the migration.

### 用例6：报告中数据集成性的保证

> Use Case 6 Assurance of Data Integrity in Reports

数据管理在 20 世纪 90 年代非常流行，但在 21 世纪初期已经衰退得基本消失，它更是没有成为 2005 年数据治理革命的重要组成部分，大概原因是由于数据管理高度依赖手工操作。然而，数据沿袭现在为这类问题提供了新的解决方案，数据沿袭可以解决数据管理问题的例子包括:

- 持续监控报表中未使用到的数据表和 ETL 流程。这不仅是上文提到的数据迁移用例，也是数据管理的持续活动。
- 发现并纠正在数据迁移过程中的不兼容性问题。比如目标列比源列少、数据可能被截断、目标列数据类型不一致，或删除仅包含数字的字符串类型列中的无意义的前缀数字零。
- 自动化可疑的数据提取，如“私人”文件可能会用于不合规地数据处理，甚至可能是欺诈。

> In the 1990’s Data Administration became very popular, only to largely disappear in the recessions of the early 2000’s. It never became a serious component of the Data Governance revolution that began in 2005, probably because of the intensely manual aspect of Data Administration. Yet, data lineage now offers a solution to this problem. Examples of the concerns of Data Administration that data lineage can address include:
>
> - Continuously monitoring for tables and ETL processes that are not used in reporting, and go nowhere. This is not just within the context of the migration projects we mentioned earlier but is a continuous activity of Data Administration.
> - Discovering and remediating datatype discrepancies that corrupt data as it flows. A target column may be shorter than a source column, and truncate data. Or a target column may be numeric and remove meaningful leading zeroes from a source column that is character data, but contains only numbers.
> - Discovering suspicious data extracts, such as “private” files that might be used for ungoverned data processing, or may even possibly be fraudulent.

除了上述例子之外，实际上在数据管理中还存在各种各样的用例。如果不使用数据治袭，很难在整个企业数据生态系统的层面上实质性解决这类问题。

> There are actually a wide range of use cases that exist within Data Administration in addition to these examples. Without data lineage it is difficult to see how these could be meaningfully addressed at the scale of an entire enterprise data ecosystem.

## 数据沿袭自动化扮演的角色

> The Role of Automated Data Lineage

此时，我们已经解释了数据沿袭概念，并列举了一系列有价值的用例场景来演示。然而，人们很自然地会问数据沿袭在实际工作中是如何完成的。

> At this point, we have described what data lineage is and illustrated it with a set of use cases where it is particularly valuable. However, it is natural to ask how data lineage actually gets done.

传统模式中，数据沿袭在 IT 开发工作期间有时已经被记录下来了。那么，即使尝试记录数据沿袭也是白费力气，比如环境发生变化时，文档却不会自动更新。如果对文件信息的准确性持有怀疑时，那么所有相关的文件信息都是可疑的，自然没有人相信这些文档数据。

> Traditionally, it has been documented during IT development efforts – at least sometimes. Even where there are attempts to document data lineage, they are nearly always wasted effort. The environment evolves, but the documentation is usually not updated. And if there is even the slightest suspicion of the accuracy of the documentation, then all of it is suspect, and nobody trusts it.

传统模式中，由于追踪频率很高及技术手段有限，我们不得不手工追踪数据沿袭。

> Traditionally, this has left us with manual efforts to trace data lineage whenever the need arises – which is pretty frequent.

这些手工追踪数据非常有价值，但容易出错，这种情况让所有相关的人员感到沮丧。但是现在，有了替代方案——数据沿袭自动化。

> These manual efforts are costly, error-prone, and frustrating to all involved. But today, there is an alternative – automated data lineage discovery.

数据沿袭自动化工具的处理结果十分准确，其原因如下：
- **数据沿袭自动化工具有良好的可扩展性**。通常情况不会分配足够的技术 IT 人员来完成手工追踪数据沿袭的工作。
- **数据沿袭自动化工具处理结果准确一致**。手工记录很容易出错，而且不同的分析师可能以不同的方式记录数据沿袭，从而延伸出不同的问题解释口径。
- **数据沿袭自动化工具可处理复杂性场景**。即使中等规模的企业在其数据场景中也有大量的数据列和 ETL 流程，非人工操作可以完成数据沿袭工作。
- **数据沿袭自动化工具处理速度非常高效**。它们可以扫描大规模的 IT 环境，并在几分钟内生成数据沿袭图谱。同样的工作，手工操作的话可能需要几天甚至几个月的时间才能完成。正如我们所看到的，在一些用例场景中，需要立即应答数据沿袭相关的问题。

> The tools that enable automated data lineage address the use cases described above very effectively, for the following reasons:
> Automated data lineage tools scale well. Very often there are not enough technical IT staff to do manual data lineage work.
> Automated data lineage tools are accurate. Manual effort is error-prone, and different analysts may document data lineage differently leading to interpretation problems.
> Automated data lineage tools deal well with complexity. Even moderately sized enterprises have a huge number of columns and ETL processes in their data landscapes.
> Automated data lineage tools are very fast. They can scan huge environments and produce data lineage diagrams in just minutes. It would take humans between several days to several months to do the same work. As we have seen, there are use cases where answers about data lineage are needed immediately.

IT 经理和执行发起人有时会错误地采用这样一种观点，即数据沿袭的需求是非常断断续续的——就像迁移项目一样——他们会疑惑为什么要投资一个按年度许可证收取费用的数据沿袭自动化工具呢？他们认为在项目需要时再聘请数据顾问手工记录数据沿袭——即单次的数据服务成本。上述讨论的用例场景表明，这是一种非常短视的观点，企业应该为核心的用例场景和需要快速解决数据问题的用例场景采购一套数据沿袭自动化工具，这才是 2022 年及以后大多数企业面临的决策问题。

> IT managers and executive sponsors sometimes make the mistake of adopting a viewpoint that the need for data lineage is very intermittent – like migrations projects - so why should they invest in an automated data lineage tool that will eat up recurrent annual license fees? Sometimes they think it is better to hire consultants to document the data lineage manually when it is needed – a one-time cost. The use cases discussed earlier show that this is a short-sighted view and an automated data lineage tool needs to be on hand for the use cases that are permanent in nature, and others where a rapid response is needed. That really is the situation for most enterprises as they face 2022 and beyond.

## 结论

> Conclusion

本文中，我们详细描述了数据沿袭概念并列举了几个核心用例场景。我们从 IT 角度和数据治理角度看到数据沿袭发挥的作用。事实上，数据沿袭的重要性和价值远远超出了我们上述描述的数据质量场景（例如源目标协调场景）、主数据管理场景（例如流入集成流程场景）和数据治理的其他方面(例如选择最佳的数据源)。我们也看到了采用数据沿袭会遇到的障碍，比如:

- 数据沿袭自动化概念依赖的业务场景需求并不常见
- IT 业界过往对数据沿袭的偏见，认为它是不切实际的，也从未讨论过如何落地
- 缺乏对数据沿袭用例场景的理解，把复杂问题进行了简单化处理（为了填坑又挖了另一个坑）

> In this eBook we have described data lineage in detail with illustrations from several core use cases. We have seen how useful it can be from an IT perspective and a Data Governance perspective. In fact, the importance and value of data lineage goes well beyond what we have described as it is needed to successfully address Data Quality (e.g. source-target reconciliation), Master Data Management (e.g. flows into integration processes), and other aspects of Data Governance (e.g. selecting the best source of data). We have also seen barriers to adoption, including:
>
> - The perception that automated data lineage is needed on an infrequent basis
> - Inertia in IT based on data lineage being impractical in the past, and so never discussed
> - A lack of understanding of the use cases due to the problems they solve simply being ignored

然而，我们很清楚地明白数据沿袭自动化的价值。回到我们的炼油厂用例场景，没有设备的话任何炼油厂都无法运行，更无法了解在某一时刻它的运行数据。如果我们不了解炼油厂运行的数据沿袭地图，我们凭什么期望一个复杂的数据环境能够有效地运作，从业务策略、操作效率和风险缓解的角度来看，这张数据沿袭地图是十分必要的，而且它正是数据沿袭自动化工具所提供的。也许在我们列出的所有用例场景中，最具有战略意义的是第一个项目迁移的用例，通过重新设计业务流程来匹配业务目标。战术上最有用的可能是最后一个用例，它能够快速诊断是什么影响了 ETL 作业的运行。归根结底，我们列举这么多的用例场景组合是为了给企业采购数据沿袭自动化工具提供一个充足的理由。事实本是如此，我们期待这些数据沿袭工具在 2022 年被广泛采用。

> Yet we have also clearly demonstrated the value of automated data lineage. Going back to our oil refinery metaphor, no refinery could operate without the instrumentation to understand what is happening in it at any time. Why should we expect a complex data environment to function efficiently and without risk if we do not even have a map of how it is laid out? From a perspective of business strategy, operational efficiency, and risk mitigation this map is needed and it is precisely what an automated data lineage tool provides. Perhaps of all the use cases, we have laid out, the most strategic is the first one wherein migrations the opportunity exists to reengineer business processes to match business objectives. The most tactically useful is perhaps the last one, with the ability to quickly diagnose what broke an ETL process. Yet the combination of all of the use cases we have described provides an overwhelming justification for the acquisition of an automated data lineage tool. So overwhelming in fact that we can expect widespread adoption of these tools in 2022.
