#line 1 "..\\code\\UCOSII\\SOURCE\\os_core.c"





















 

#line 1 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"




















 












 







 

#line 1 "..\\code\\application\\app_cfg.h"







 








											 










 
					









 
void Start_Task(void *p_arg);



#line 45 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"
#line 1 "..\\code\\application\\os_cfg.h"






















 





                                        










                                        













                                        





                                        
#line 73 "..\\code\\application\\os_cfg.h"


                                        
#line 83 "..\\code\\application\\os_cfg.h"


                                        
#line 93 "..\\code\\application\\os_cfg.h"


                                        





                                        






                                        
#line 118 "..\\code\\application\\os_cfg.h"


                                        
#line 127 "..\\code\\application\\os_cfg.h"


                                        






                                        







	 	   	  		 			 	    		   		 		 	 	 			 	    		   	 			 	  	 		 				 		  			 		 					 	  	  		      		  	   		      		  	 		 	      		   		 		  	 		 	      		  		  		  
#line 46 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"
#line 1 "..\\code\\UCOSII\\PORTS\\os_cpu.h"






















 
















 

typedef unsigned char  BOOLEAN;
typedef unsigned char  INT8U;                     
typedef signed   char  INT8S;                     
typedef unsigned short INT16U;                    
typedef signed   short INT16S;                    
typedef unsigned int   INT32U;                    
typedef signed   int   INT32S;                    
typedef float          FP32;                      
typedef double         FP64;                      

typedef unsigned int   OS_STK;                    
typedef unsigned int   OS_CPU_SR;                 





















 












 









 


OS_CPU_SR  OS_CPU_SR_Save(void);
void       OS_CPU_SR_Restore(OS_CPU_SR cpu_sr);


void       OSCtxSw(void);
void       OSIntCtxSw(void);
void       OSStartHighRdy(void);

void       OS_CPU_PendSVHandler(void);

                                                   



                                                   

#line 47 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"





 




























#line 88 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"









 




 
#line 111 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"







 








 
#line 134 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"


                                             





 

























 











 









 









 









 









 












 









 


#line 255 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

#line 266 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"













#line 293 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

#line 300 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

#line 311 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"



#line 320 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"



#line 337 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

 




 


typedef  INT8U    OS_PRIO;





typedef struct os_event {
    INT8U    OSEventType;                     
    void    *OSEventPtr;                      
    INT16U   OSEventCnt;                      
    OS_PRIO  OSEventGrp;                      
    OS_PRIO  OSEventTbl[((63u) / 8u + 1u)];   




} OS_EVENT;







 








typedef  INT16U   OS_FLAGS;







typedef struct os_flag_grp {                 
    INT8U         OSFlagType;                
    void         *OSFlagWaitList;            
    OS_FLAGS      OSFlagFlags;               

    INT8U        *OSFlagName;

} OS_FLAG_GRP;



typedef struct os_flag_node {                
    void         *OSFlagNodeNext;            
    void         *OSFlagNodePrev;            
    void         *OSFlagNodeTCB;             
    void         *OSFlagNodeFlagGrp;         
    OS_FLAGS      OSFlagNodeFlags;           
    INT8U         OSFlagNodeWaitType;        
                                             
                                             
                                             
                                             
} OS_FLAG_NODE;


 




 


typedef struct os_mbox_data {
    void   *OSMsg;                          
    OS_PRIO OSEventTbl[((63u) / 8u + 1u)];  
    OS_PRIO OSEventGrp;                     
} OS_MBOX_DATA;






 

#line 455 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

 




 


typedef struct os_mutex_data {
    OS_PRIO OSEventTbl[((63u) / 8u + 1u)];   
    OS_PRIO OSEventGrp;                      
    BOOLEAN OSValue;                         
    INT8U   OSOwnerPrio;                     
    INT8U   OSMutexPIP;                      
} OS_MUTEX_DATA;






 


typedef struct os_q {                    
    struct os_q   *OSQPtr;               
    void         **OSQStart;             
    void         **OSQEnd;               
    void         **OSQIn;                
    void         **OSQOut;               
    INT16U         OSQSize;              
    INT16U         OSQEntries;           
} OS_Q;


typedef struct os_q_data {
    void          *OSMsg;                
    INT16U         OSNMsgs;              
    INT16U         OSQSize;              
    OS_PRIO        OSEventTbl[((63u) / 8u + 1u)];   
    OS_PRIO        OSEventGrp;           
} OS_Q_DATA;






 


typedef struct os_sem_data {
    INT16U  OSCnt;                           
    OS_PRIO OSEventTbl[((63u) / 8u + 1u)];   
    OS_PRIO OSEventGrp;                      
} OS_SEM_DATA;






 


typedef struct os_stk_data {
    INT32U  OSFree;                     
    INT32U  OSUsed;                     
} OS_STK_DATA;


 




 

typedef struct os_tcb {
    OS_STK          *OSTCBStkPtr;            


    void            *OSTCBExtPtr;            
    OS_STK          *OSTCBStkBottom;         
    INT32U           OSTCBStkSize;           
    INT16U           OSTCBOpt;               
    INT16U           OSTCBId;                


    struct os_tcb   *OSTCBNext;              
    struct os_tcb   *OSTCBPrev;              


    OS_EVENT        *OSTCBEventPtr;          







    void            *OSTCBMsg;               




    OS_FLAG_NODE    *OSTCBFlagNode;          

    OS_FLAGS         OSTCBFlagsRdy;          


    INT32U           OSTCBDly;               
    INT8U            OSTCBStat;              
    INT8U            OSTCBStatPend;          
    INT8U            OSTCBPrio;              

    INT8U            OSTCBX;                 
    INT8U            OSTCBY;                 
    OS_PRIO          OSTCBBitX;              
    OS_PRIO          OSTCBBitY;              


    INT8U            OSTCBDelReq;            



    INT32U           OSTCBCtxSwCtr;          
    INT32U           OSTCBCyclesTot;         
    INT32U           OSTCBCyclesStart;       
    OS_STK          *OSTCBStkBase;           
    INT32U           OSTCBStkUsed;           



    INT8U           *OSTCBTaskName;



    INT32U           OSTCBRegTbl[1u];

} OS_TCB;

 




 

#line 636 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

 




 

  INT32U            OSCtxSwCtr;                


  OS_EVENT         *OSEventFreeList;           
  OS_EVENT          OSEventTbl[10u]; 



  OS_FLAG_GRP       OSFlagTbl[5u];   
  OS_FLAG_GRP      *OSFlagFreeList;            



  INT8U             OSCPUUsage;                
  INT32U            OSIdleCtrMax;              
  INT32U            OSIdleCtrRun;              
  BOOLEAN           OSStatRdy;                 
  OS_STK            OSTaskStatStk[128u];       


  INT8U             OSIntNesting;              

  INT8U             OSLockNesting;             

  INT8U             OSPrioCur;                 
  INT8U             OSPrioHighRdy;             

  OS_PRIO           OSRdyGrp;                         
  OS_PRIO           OSRdyTbl[((63u) / 8u + 1u)];        

  BOOLEAN           OSRunning;                        

  INT8U             OSTaskCtr;                        

  volatile  INT32U  OSIdleCtr;                                  





  OS_STK            OSTaskIdleStk[128u];       


  OS_TCB           *OSTCBCur;                         
  OS_TCB           *OSTCBFreeList;                    
  OS_TCB           *OSTCBHighRdy;                     
  OS_TCB           *OSTCBList;                        
  OS_TCB           *OSTCBPrioTbl[63u + 1u];     
  OS_TCB            OSTCBTbl[5u + 2u];    


  INT8U             OSTickStepState;           








  OS_Q             *OSQFreeList;               
  OS_Q              OSQTbl[4u];         



  volatile  INT32U  OSTime;                    


#line 726 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

extern  INT8U   const     OSUnMapTbl[256];           

 





 





 



#line 754 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

#line 762 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"







 




OS_FLAGS      OSFlagAccept            (OS_FLAG_GRP     *pgrp,
                                       OS_FLAGS         flags,
                                       INT8U            wait_type,
                                       INT8U           *perr);


OS_FLAG_GRP  *OSFlagCreate            (OS_FLAGS         flags,
                                       INT8U           *perr);


OS_FLAG_GRP  *OSFlagDel               (OS_FLAG_GRP     *pgrp,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSFlagNameGet           (OS_FLAG_GRP     *pgrp,
                                       INT8U          **pname,
                                       INT8U           *perr);

void          OSFlagNameSet           (OS_FLAG_GRP     *pgrp,
                                       INT8U           *pname,
                                       INT8U           *perr);


OS_FLAGS      OSFlagPend              (OS_FLAG_GRP     *pgrp,
                                       OS_FLAGS         flags,
                                       INT8U            wait_type,
                                       INT32U           timeout,
                                       INT8U           *perr);

OS_FLAGS      OSFlagPendGetFlagsRdy   (void);
OS_FLAGS      OSFlagPost              (OS_FLAG_GRP     *pgrp,
                                       OS_FLAGS         flags,
                                       INT8U            opt,
                                       INT8U           *perr);


OS_FLAGS      OSFlagQuery             (OS_FLAG_GRP     *pgrp,
                                       INT8U           *perr);







 




void         *OSMboxAccept            (OS_EVENT        *pevent);


OS_EVENT     *OSMboxCreate            (void            *pmsg);


OS_EVENT     *OSMboxDel               (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


void         *OSMboxPend              (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);


INT8U         OSMboxPendAbort         (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSMboxPost              (OS_EVENT        *pevent,
                                       void            *pmsg);



INT8U         OSMboxPostOpt           (OS_EVENT        *pevent,
                                       void            *pmsg,
                                       INT8U            opt);



INT8U         OSMboxQuery             (OS_EVENT        *pevent,
                                       OS_MBOX_DATA    *p_mbox_data);







 

#line 897 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"





 




BOOLEAN       OSMutexAccept           (OS_EVENT        *pevent,
                                       INT8U           *perr);


OS_EVENT     *OSMutexCreate           (INT8U            prio,
                                       INT8U           *perr);


OS_EVENT     *OSMutexDel              (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


void          OSMutexPend             (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);

INT8U         OSMutexPost             (OS_EVENT        *pevent);


INT8U         OSMutexQuery            (OS_EVENT        *pevent,
                                       OS_MUTEX_DATA   *p_mutex_data);




 




 




void         *OSQAccept               (OS_EVENT        *pevent,
                                       INT8U           *perr);


OS_EVENT     *OSQCreate               (void           **start,
                                       INT16U           size);


OS_EVENT     *OSQDel                  (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSQFlush                (OS_EVENT        *pevent);


void         *OSQPend                 (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);


INT8U         OSQPendAbort            (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSQPost                 (OS_EVENT        *pevent,
                                       void            *pmsg);



INT8U         OSQPostFront            (OS_EVENT        *pevent,
                                       void            *pmsg);



INT8U         OSQPostOpt              (OS_EVENT        *pevent,
                                       void            *pmsg,
                                       INT8U            opt);



INT8U         OSQQuery                (OS_EVENT        *pevent,
                                       OS_Q_DATA       *p_q_data);




 




 



INT16U        OSSemAccept             (OS_EVENT        *pevent);


OS_EVENT     *OSSemCreate             (INT16U           cnt);


OS_EVENT     *OSSemDel                (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


void          OSSemPend               (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);


INT8U         OSSemPendAbort          (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


INT8U         OSSemPost               (OS_EVENT        *pevent);


INT8U         OSSemQuery              (OS_EVENT        *pevent,
                                       OS_SEM_DATA     *p_sem_data);



void          OSSemSet                (OS_EVENT        *pevent,
                                       INT16U           cnt,
                                       INT8U           *perr);




 




 

INT8U         OSTaskChangePrio        (INT8U            oldprio,
                                       INT8U            newprio);



INT8U         OSTaskCreate            (void           (*task)(void *p_arg),
                                       void            *p_arg,
                                       OS_STK          *ptos,
                                       INT8U            prio);



INT8U         OSTaskCreateExt         (void           (*task)(void *p_arg),
                                       void            *p_arg,
                                       OS_STK          *ptos,
                                       INT8U            prio,
                                       INT16U           id,
                                       OS_STK          *pbos,
                                       INT32U           stk_size,
                                       void            *pext,
                                       INT16U           opt);



INT8U         OSTaskDel               (INT8U            prio);
INT8U         OSTaskDelReq            (INT8U            prio);



INT8U         OSTaskNameGet           (INT8U            prio,
                                       INT8U          **pname,
                                       INT8U           *perr);

void          OSTaskNameSet           (INT8U            prio,
                                       INT8U           *pname,
                                       INT8U           *perr);



INT8U         OSTaskResume            (INT8U            prio);
INT8U         OSTaskSuspend           (INT8U            prio);



INT8U         OSTaskStkChk            (INT8U            prio,
                                       OS_STK_DATA     *p_stk_data);



INT8U         OSTaskQuery             (INT8U            prio,
                                       OS_TCB          *p_task_data);





INT32U        OSTaskRegGet            (INT8U            prio,
                                       INT8U            id,
                                       INT8U           *perr);

void          OSTaskRegSet            (INT8U            prio,
                                       INT8U            id,
                                       INT32U           value,
                                       INT8U           *perr);


 




 

void          OSTimeDly               (INT32U           ticks);


INT8U         OSTimeDlyHMSM           (INT8U            hours,
                                       INT8U            minutes,
                                       INT8U            seconds,
                                       INT16U           ms);



INT8U         OSTimeDlyResume         (INT8U            prio);



INT32U        OSTimeGet               (void);
void          OSTimeSet               (INT32U           ticks);


void          OSTimeTick              (void);





 

#line 1177 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"





 

void          OSInit                  (void);

void          OSIntEnter              (void);
void          OSIntExit               (void);






void          OSSchedLock             (void);
void          OSSchedUnlock           (void);


void          OSStart                 (void);

void          OSStatInit              (void);

INT16U        OSVersion               (void);

 





 


void          OS_Dummy                (void);



INT8U         OS_EventTaskRdy         (OS_EVENT        *pevent,
                                       void            *pmsg,
                                       INT8U            msk,
                                       INT8U            pend_stat);

void          OS_EventTaskWait        (OS_EVENT        *pevent);

void          OS_EventTaskRemove      (OS_TCB          *ptcb,
                                       OS_EVENT        *pevent);

#line 1233 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

void          OS_EventWaitListInit    (OS_EVENT        *pevent);



void          OS_FlagInit             (void);
void          OS_FlagUnlink           (OS_FLAG_NODE    *pnode);


void          OS_MemClr               (INT8U           *pdest,
                                       INT16U           size);

void          OS_MemCopy              (INT8U           *pdest,
                                       INT8U           *psrc,
                                       INT16U           size);






void          OS_QInit                (void);


void          OS_Sched                (void);


INT8U         OS_StrLen               (INT8U           *psrc);


void          OS_TaskIdle             (void            *p_arg);

void          OS_TaskReturn           (void);


void          OS_TaskStat             (void            *p_arg);



void          OS_TaskStkClr           (OS_STK          *pbos,
                                       INT32U           size,
                                       INT16U           opt);



void          OS_TaskStatStkChk       (void);


INT8U         OS_TCBInit              (INT8U            prio,
                                       OS_STK          *ptos,
                                       OS_STK          *pbos,
                                       INT16U           id,
                                       INT32U           stk_size,
                                       void            *pext,
                                       INT16U           opt);





 





 





void          OSInitHookBegin         (void);
void          OSInitHookEnd           (void);

void          OSTaskCreateHook        (OS_TCB          *ptcb);
void          OSTaskDelHook           (OS_TCB          *ptcb);

void          OSTaskIdleHook          (void);

void          OSTaskReturnHook        (OS_TCB          *ptcb);

void          OSTaskStatHook          (void);
OS_STK       *OSTaskStkInit           (void           (*task)(void *p_arg),
                                       void            *p_arg,
                                       OS_STK          *ptos,
                                       INT16U           opt);


void          OSTaskSwHook            (void);


void          OSTCBInitHook           (OS_TCB          *ptcb);


void          OSTimeTickHook          (void);


 





 

#line 1358 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"







 







 










 





 

#line 1402 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"






























 

#line 1440 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"


























 

#line 1478 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"














 

#line 1500 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"














 

#line 1526 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"






































 

#line 1572 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"






















 

#line 1602 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"























































#line 1664 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"





 





















 

#line 1737 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"






 


























#line 1777 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"



































 

#line 1889 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"






	 	   	  		 			 	    		   		 		 	 	 			 	    		   	 			 	  	 		 				 		  			 		 					 	  	  		      		  	   		      		  	 		 	      		   		 		  	 		 	      		  		  		  
#line 27 "..\\code\\UCOSII\\SOURCE\\os_core.c"









 

INT8U  const  OSUnMapTbl[256] = {
    0u, 0u, 1u, 0u, 2u, 0u, 1u, 0u, 3u, 0u, 1u, 0u, 2u, 0u, 1u, 0u,  
    4u, 0u, 1u, 0u, 2u, 0u, 1u, 0u, 3u, 0u, 1u, 0u, 2u, 0u, 1u, 0u,  
    5u, 0u, 1u, 0u, 2u, 0u, 1u, 0u, 3u, 0u, 1u, 0u, 2u, 0u, 1u, 0u,  
    4u, 0u, 1u, 0u, 2u, 0u, 1u, 0u, 3u, 0u, 1u, 0u, 2u, 0u, 1u, 0u,  
    6u, 0u, 1u, 0u, 2u, 0u, 1u, 0u, 3u, 0u, 1u, 0u, 2u, 0u, 1u, 0u,  
    4u, 0u, 1u, 0u, 2u, 0u, 1u, 0u, 3u, 0u, 1u, 0u, 2u, 0u, 1u, 0u,  
    5u, 0u, 1u, 0u, 2u, 0u, 1u, 0u, 3u, 0u, 1u, 0u, 2u, 0u, 1u, 0u,  
    4u, 0u, 1u, 0u, 2u, 0u, 1u, 0u, 3u, 0u, 1u, 0u, 2u, 0u, 1u, 0u,  
    7u, 0u, 1u, 0u, 2u, 0u, 1u, 0u, 3u, 0u, 1u, 0u, 2u, 0u, 1u, 0u,  
    4u, 0u, 1u, 0u, 2u, 0u, 1u, 0u, 3u, 0u, 1u, 0u, 2u, 0u, 1u, 0u,  
    5u, 0u, 1u, 0u, 2u, 0u, 1u, 0u, 3u, 0u, 1u, 0u, 2u, 0u, 1u, 0u,  
    4u, 0u, 1u, 0u, 2u, 0u, 1u, 0u, 3u, 0u, 1u, 0u, 2u, 0u, 1u, 0u,  
    6u, 0u, 1u, 0u, 2u, 0u, 1u, 0u, 3u, 0u, 1u, 0u, 2u, 0u, 1u, 0u,  
    4u, 0u, 1u, 0u, 2u, 0u, 1u, 0u, 3u, 0u, 1u, 0u, 2u, 0u, 1u, 0u,  
    5u, 0u, 1u, 0u, 2u, 0u, 1u, 0u, 3u, 0u, 1u, 0u, 2u, 0u, 1u, 0u,  
    4u, 0u, 1u, 0u, 2u, 0u, 1u, 0u, 3u, 0u, 1u, 0u, 2u, 0u, 1u, 0u   
};

 




 

static  void  OS_InitEventList(void);

static  void  OS_InitMisc(void);

static  void  OS_InitRdyList(void);

static  void  OS_InitTaskIdle(void);


static  void  OS_InitTaskStat(void);


static  void  OS_InitTCBList(void);

static  void  OS_SchedNew(void);

 
























 

#line 158 "..\\code\\UCOSII\\SOURCE\\os_core.c"

 
























 

#line 234 "..\\code\\UCOSII\\SOURCE\\os_core.c"

 





































































 
 
#line 555 "..\\code\\UCOSII\\SOURCE\\os_core.c"

 











 

void  OSInit (void)
{
    OSInitHookBegin();                                            

    OS_InitMisc();                                                

    OS_InitRdyList();                                             

    OS_InitTCBList();                                             

    OS_InitEventList();                                           


    OS_FlagInit();                                                







    OS_QInit();                                                   


    OS_InitTaskIdle();                                            

    OS_InitTaskStat();                                            






    OSInitHookEnd();                                              




}
 























 

void  OSIntEnter (void)
{
    if (OSRunning == 1u) {
        if (OSIntNesting < 255u) {
            OSIntNesting++;                       
        }
    }
}
 

















 

void  OSIntExit (void)
{

    OS_CPU_SR  cpu_sr = 0u;




    if (OSRunning == 1u) {
        {cpu_sr = OS_CPU_SR_Save();};
        if (OSIntNesting > 0u) {                            
            OSIntNesting--;
        }
        if (OSIntNesting == 0u) {                           
            if (OSLockNesting == 0u) {                      
                OS_SchedNew();
                OSTCBHighRdy = OSTCBPrioTbl[OSPrioHighRdy];
                if (OSPrioHighRdy != OSPrioCur) {           

                    OSTCBHighRdy->OSTCBCtxSwCtr++;          

                    OSCtxSwCtr++;                           
                    OSIntCtxSw();                           
                }
            }
        }
        {OS_CPU_SR_Restore(cpu_sr);};
    }
}
 















 

#line 717 "..\\code\\UCOSII\\SOURCE\\os_core.c"

 














 


void  OSSchedLock (void)
{

    OS_CPU_SR  cpu_sr = 0u;




    if (OSRunning == 1u) {                   
        {cpu_sr = OS_CPU_SR_Save();};
        if (OSIntNesting == 0u) {                 
            if (OSLockNesting < 255u) {           
                OSLockNesting++;                  
            }
        }
        {OS_CPU_SR_Restore(cpu_sr);};
    }
}


 













 


void  OSSchedUnlock (void)
{

    OS_CPU_SR  cpu_sr = 0u;




    if (OSRunning == 1u) {                             
        {cpu_sr = OS_CPU_SR_Save();};
        if (OSLockNesting > 0u) {                           
            OSLockNesting--;                                
            if (OSLockNesting == 0u) {                      
                if (OSIntNesting == 0u) {                   
                    {OS_CPU_SR_Restore(cpu_sr);};
                    OS_Sched();                             
                } else {
                    {OS_CPU_SR_Restore(cpu_sr);};
                }
            } else {
                {OS_CPU_SR_Restore(cpu_sr);};
            }
        } else {
            {OS_CPU_SR_Restore(cpu_sr);};
        }
    }
}


 


















 

void  OSStart (void)
{
    if (OSRunning == 0u) {
        OS_SchedNew();                                
        OSPrioCur     = OSPrioHighRdy;
        OSTCBHighRdy  = OSTCBPrioTbl[OSPrioHighRdy];  
        OSTCBCur      = OSTCBHighRdy;
        OSStartHighRdy();                             
    }
}
 


















 


void  OSStatInit (void)
{

    OS_CPU_SR  cpu_sr = 0u;




    OSTimeDly(2u);                                
    {cpu_sr = OS_CPU_SR_Save();};
    OSIdleCtr    = 0uL;                           
    {OS_CPU_SR_Restore(cpu_sr);};
    OSTimeDly(1000u / 10u);            
    {cpu_sr = OS_CPU_SR_Save();};
    OSIdleCtrMax = OSIdleCtr;                     
    OSStatRdy    = 1u;
    {OS_CPU_SR_Restore(cpu_sr);};
}

 












 

void  OSTimeTick (void)
{
    OS_TCB    *ptcb;

    BOOLEAN    step;


    OS_CPU_SR  cpu_sr = 0u;





    OSTimeTickHook();                                       


    {cpu_sr = OS_CPU_SR_Save();};                                    
    OSTime++;
    {OS_CPU_SR_Restore(cpu_sr);};

    if (OSRunning == 1u) {

        switch (OSTickStepState) {                          
            case 0u:                          
                 step = 1u;
                 break;

            case 1u:                         
                 step = 0u;                           
                 break;

            case 2u:                         
                 step            = 1u;                 
                 OSTickStepState = 1u;
                 break;

            default:                                        
                 step            = 1u;
                 OSTickStepState = 0u;
                 break;
        }
        if (step == 0u) {                             
            return;
        }

        ptcb = OSTCBList;                                   
        while (ptcb->OSTCBPrio != (63u)) {      
            {cpu_sr = OS_CPU_SR_Save();};
            if (ptcb->OSTCBDly != 0u) {                     
                ptcb->OSTCBDly--;                           
                if (ptcb->OSTCBDly == 0u) {                 

                    if ((ptcb->OSTCBStat & (0x01u | 0x02u | 0x04u | 0x10u | 0x20u)) != 0x00u) {
                        ptcb->OSTCBStat  &= (INT8U)~(INT8U)(0x01u | 0x02u | 0x04u | 0x10u | 0x20u);           
                        ptcb->OSTCBStatPend = 1u;                  
                    } else {
                        ptcb->OSTCBStatPend = 0u;
                    }

                    if ((ptcb->OSTCBStat & 0x08u) == 0x00u) {   
                        OSRdyGrp               |= ptcb->OSTCBBitY;              
                        OSRdyTbl[ptcb->OSTCBY] |= ptcb->OSTCBBitX;
                    }
                }
            }
            ptcb = ptcb->OSTCBNext;                         
            {OS_CPU_SR_Restore(cpu_sr);};
        }
    }
}

 












 

INT16U  OSVersion (void)
{
    return (291u);
}

 










 


void  OS_Dummy (void)
{
}


 


























 

INT8U  OS_EventTaskRdy (OS_EVENT  *pevent,
                        void      *pmsg,
                        INT8U      msk,
                        INT8U      pend_stat)
{
    OS_TCB   *ptcb;
    INT8U     y;
    INT8U     x;
    INT8U     prio;






    y    = OSUnMapTbl[pevent->OSEventGrp];               
    x    = OSUnMapTbl[pevent->OSEventTbl[y]];
    prio = (INT8U)((y << 3u) + x);                       
#line 1060 "..\\code\\UCOSII\\SOURCE\\os_core.c"

    ptcb                  =  OSTCBPrioTbl[prio];         
    ptcb->OSTCBDly        =  0u;                         

    ptcb->OSTCBMsg        =  pmsg;                       



    ptcb->OSTCBStat      &= (INT8U)~msk;                 
    ptcb->OSTCBStatPend   =  pend_stat;                  
                                                         
    if ((ptcb->OSTCBStat &   0x08u) == 0x00u) {
        OSRdyGrp         |=  ptcb->OSTCBBitY;            
        OSRdyTbl[y]      |=  ptcb->OSTCBBitX;
    }

    OS_EventTaskRemove(ptcb, pevent);                    
#line 1083 "..\\code\\UCOSII\\SOURCE\\os_core.c"

    return (prio);
}

 













 

void  OS_EventTaskWait (OS_EVENT *pevent)
{
    INT8U  y;


    OSTCBCur->OSTCBEventPtr               = pevent;                  

    pevent->OSEventTbl[OSTCBCur->OSTCBY] |= OSTCBCur->OSTCBBitX;     
    pevent->OSEventGrp                   |= OSTCBCur->OSTCBBitY;

    y             =  OSTCBCur->OSTCBY;             
    OSRdyTbl[y]  &= (OS_PRIO)~OSTCBCur->OSTCBBitX;
    if (OSRdyTbl[y] == 0u) {                       
        OSRdyGrp &= (OS_PRIO)~OSTCBCur->OSTCBBitY;
    }
}

 














 
#line 1163 "..\\code\\UCOSII\\SOURCE\\os_core.c"
 














 

void  OS_EventTaskRemove (OS_TCB   *ptcb,
                          OS_EVENT *pevent)
{
    INT8U  y;


    y                       =  ptcb->OSTCBY;
    pevent->OSEventTbl[y]  &= (OS_PRIO)~ptcb->OSTCBBitX;     
    if (pevent->OSEventTbl[y] == 0u) {
        pevent->OSEventGrp &= (OS_PRIO)~ptcb->OSTCBBitY;
    }
}

 














 
#line 1235 "..\\code\\UCOSII\\SOURCE\\os_core.c"
 












 

void  OS_EventWaitListInit (OS_EVENT *pevent)
{
    INT8U  i;


    pevent->OSEventGrp = 0u;                      
    for (i = 0u; i < ((63u) / 8u + 1u); i++) {
        pevent->OSEventTbl[i] = 0u;
    }
}

 











 

static  void  OS_InitEventList (void)
{


    INT16U     ix;
    INT16U     ix_next;
    OS_EVENT  *pevent1;
    OS_EVENT  *pevent2;


    OS_MemClr((INT8U *)&OSEventTbl[0], sizeof(OSEventTbl));  
    for (ix = 0u; ix < (10u - 1u); ix++) {         
        ix_next = ix + 1u;
        pevent1 = &OSEventTbl[ix];
        pevent2 = &OSEventTbl[ix_next];
        pevent1->OSEventType    = 0u;
        pevent1->OSEventPtr     = pevent2;



    }
    pevent1                         = &OSEventTbl[ix];
    pevent1->OSEventType            = 0u;
    pevent1->OSEventPtr             = (OS_EVENT *)0;



    OSEventFreeList                 = &OSEventTbl[0];
#line 1312 "..\\code\\UCOSII\\SOURCE\\os_core.c"
}
 











 

static  void  OS_InitMisc (void)
{

    OSTime                    = 0uL;                        


    OSIntNesting              = 0u;                         
    OSLockNesting             = 0u;                         

    OSTaskCtr                 = 0u;                         

    OSRunning                 = 0u;                   

    OSCtxSwCtr                = 0u;                         
    OSIdleCtr                 = 0uL;                        


    OSIdleCtrRun              = 0uL;
    OSIdleCtrMax              = 0uL;
    OSStatRdy                 = 0u;                   





}
 











 

static  void  OS_InitRdyList (void)
{
    INT8U  i;


    OSRdyGrp      = 0u;                                     
    for (i = 0u; i < ((63u) / 8u + 1u); i++) {
        OSRdyTbl[i] = 0u;
    }

    OSPrioCur     = 0u;
    OSPrioHighRdy = 0u;

    OSTCBHighRdy  = (OS_TCB *)0;
    OSTCBCur      = (OS_TCB *)0;
}

 











 

static  void  OS_InitTaskIdle (void)
{

    INT8U  err;





    (void)OSTaskCreateExt(OS_TaskIdle,
                          (void *)0,                                  
                          &OSTaskIdleStk[128u - 1u], 
                          (63u),                          
                          65535u,
                          &OSTaskIdleStk[0],                          
                          128u,
                          (void *)0,                                  
                          0x0001u | 0x0002u); 
#line 1440 "..\\code\\UCOSII\\SOURCE\\os_core.c"


    OSTaskNameSet((63u), (INT8U *)(void *)"uC/OS-II Idle", &err);

}
 











 


static  void  OS_InitTaskStat (void)
{

    INT8U  err;





    (void)OSTaskCreateExt(OS_TaskStat,
                          (void *)0,                                    
                          &OSTaskStatStk[128u - 1u],   
                          (63u - 1u),                            
                          65534u,
                          &OSTaskStatStk[0],                            
                          128u,
                          (void *)0,                                    
                          0x0001u | 0x0002u);   
#line 1502 "..\\code\\UCOSII\\SOURCE\\os_core.c"


    OSTaskNameSet((63u - 1u), (INT8U *)(void *)"uC/OS-II Stat", &err);

}

 











 

static  void  OS_InitTCBList (void)
{
    INT8U    ix;
    INT8U    ix_next;
    OS_TCB  *ptcb1;
    OS_TCB  *ptcb2;


    OS_MemClr((INT8U *)&OSTCBTbl[0],     sizeof(OSTCBTbl));       
    OS_MemClr((INT8U *)&OSTCBPrioTbl[0], sizeof(OSTCBPrioTbl));   
    for (ix = 0u; ix < (5u + 2u - 1u); ix++) {     
        ix_next =  ix + 1u;
        ptcb1   = &OSTCBTbl[ix];
        ptcb2   = &OSTCBTbl[ix_next];
        ptcb1->OSTCBNext = ptcb2;

        ptcb1->OSTCBTaskName = (INT8U *)(void *)"?";              

    }
    ptcb1                   = &OSTCBTbl[ix];
    ptcb1->OSTCBNext        = (OS_TCB *)0;                        

    ptcb1->OSTCBTaskName    = (INT8U *)(void *)"?";               

    OSTCBList               = (OS_TCB *)0;                        
    OSTCBFreeList           = &OSTCBTbl[0];
}
 


















 

void  OS_MemClr (INT8U  *pdest,
                 INT16U  size)
{
    while (size > 0u) {
        *pdest++ = (INT8U)0;
        size--;
    }
}
 






















 

void  OS_MemCopy (INT8U  *pdest,
                  INT8U  *psrc,
                  INT16U  size)
{
    while (size > 0u) {
        *pdest++ = *psrc++;
        size--;
    }
}
 















 

void  OS_Sched (void)
{

    OS_CPU_SR  cpu_sr = 0u;




    {cpu_sr = OS_CPU_SR_Save();};
    if (OSIntNesting == 0u) {                           
        if (OSLockNesting == 0u) {                      
            OS_SchedNew();
            OSTCBHighRdy = OSTCBPrioTbl[OSPrioHighRdy];
            if (OSPrioHighRdy != OSPrioCur) {           

                OSTCBHighRdy->OSTCBCtxSwCtr++;          

                OSCtxSwCtr++;                           
                OSCtxSw();                           
            }
        }
    }
    {OS_CPU_SR_Restore(cpu_sr);};
}
















 

static  void  OS_SchedNew (void)
{

    INT8U   y;


    y             = OSUnMapTbl[OSRdyGrp];
    OSPrioHighRdy = (INT8U)((y << 3u) + OSUnMapTbl[OSRdyTbl[y]]);
#line 1697 "..\\code\\UCOSII\\SOURCE\\os_core.c"
}

 














 


INT8U  OS_StrLen (INT8U *psrc)
{
    INT8U  len;


    len = 0u;
    while (*psrc != (INT8U)0) {
        psrc++;
        len++;
    }
    return (len);
}

 



















 

void  OS_TaskIdle (void *p_arg)
{

    OS_CPU_SR  cpu_sr = 0u;




    p_arg = p_arg;                                
    for (;;) {
        {cpu_sr = OS_CPU_SR_Save();};
        OSIdleCtr++;
        {OS_CPU_SR_Restore(cpu_sr);};
        OSTaskIdleHook();                         
    }
}
 






















 


void  OS_TaskStat (void *p_arg)
{

    OS_CPU_SR  cpu_sr = 0u;




    p_arg = p_arg;                                
    while (OSStatRdy == 0u) {
        OSTimeDly(2u * 1000u / 10u);   
    }
    OSIdleCtrMax /= 100uL;
    if (OSIdleCtrMax == 0uL) {
        OSCPUUsage = 0u;

        (void)OSTaskSuspend(0xFFu);





    }
    for (;;) {
        {cpu_sr = OS_CPU_SR_Save();};
        OSIdleCtrRun = OSIdleCtr;                 
        OSIdleCtr    = 0uL;                       
        {OS_CPU_SR_Restore(cpu_sr);};
        OSCPUUsage   = (INT8U)(100uL - OSIdleCtrRun / OSIdleCtrMax);
        OSTaskStatHook();                         

        OS_TaskStatStkChk();                      

        OSTimeDly(1000u / 10u);        
    }
}

 










 


void  OS_TaskStatStkChk (void)
{
    OS_TCB      *ptcb;
    OS_STK_DATA  stk_data;
    INT8U        err;
    INT8U        prio;


    for (prio = 0u; prio <= (63u); prio++) {
        err = OSTaskStkChk(prio, &stk_data);
        if (err == 0u) {
            ptcb = OSTCBPrioTbl[prio];
            if (ptcb != (OS_TCB *)0) {                                
                if (ptcb != ((OS_TCB *)1)) {                        


                    ptcb->OSTCBStkBase = ptcb->OSTCBStkBottom + ptcb->OSTCBStkSize;



                    ptcb->OSTCBStkUsed = stk_data.OSUsed;             

                }
            }
        }
    }
}

 









































 

INT8U  OS_TCBInit (INT8U    prio,
                   OS_STK  *ptos,
                   OS_STK  *pbos,
                   INT16U   id,
                   INT32U   stk_size,
                   void    *pext,
                   INT16U   opt)
{
    OS_TCB    *ptcb;

    OS_CPU_SR  cpu_sr = 0u;


    INT8U      i;



    {cpu_sr = OS_CPU_SR_Save();};
    ptcb = OSTCBFreeList;                                   
    if (ptcb != (OS_TCB *)0) {
        OSTCBFreeList            = ptcb->OSTCBNext;         
        {OS_CPU_SR_Restore(cpu_sr);};
        ptcb->OSTCBStkPtr        = ptos;                    
        ptcb->OSTCBPrio          = prio;                    
        ptcb->OSTCBStat          = 0x00u;             
        ptcb->OSTCBStatPend      = 0u;         
        ptcb->OSTCBDly           = 0u;                      


        ptcb->OSTCBExtPtr        = pext;                    
        ptcb->OSTCBStkSize       = stk_size;                
        ptcb->OSTCBStkBottom     = pbos;                    
        ptcb->OSTCBOpt           = opt;                     
        ptcb->OSTCBId            = id;                      
#line 1958 "..\\code\\UCOSII\\SOURCE\\os_core.c"


        ptcb->OSTCBDelReq        = 0u;



        ptcb->OSTCBY             = (INT8U)(prio >> 3u);
        ptcb->OSTCBX             = (INT8U)(prio & 0x07u);




                                                                   
        ptcb->OSTCBBitY          = (OS_PRIO)(1uL << ptcb->OSTCBY);
        ptcb->OSTCBBitX          = (OS_PRIO)(1uL << ptcb->OSTCBX);


        ptcb->OSTCBEventPtr      = (OS_EVENT  *)0;          






        ptcb->OSTCBFlagNode  = (OS_FLAG_NODE *)0;           



        ptcb->OSTCBMsg       = (void *)0;                   



        ptcb->OSTCBCtxSwCtr    = 0uL;                       
        ptcb->OSTCBCyclesStart = 0uL;
        ptcb->OSTCBCyclesTot   = 0uL;
        ptcb->OSTCBStkBase     = (OS_STK *)0;
        ptcb->OSTCBStkUsed     = 0uL;



        ptcb->OSTCBTaskName    = (INT8U *)(void *)"?";



        for (i = 0u; i < 1u; i++) {
            ptcb->OSTCBRegTbl[i] = 0u;
        }


        OSTCBInitHook(ptcb);

        OSTaskCreateHook(ptcb);                             

        {cpu_sr = OS_CPU_SR_Save();};
        OSTCBPrioTbl[prio] = ptcb;
        ptcb->OSTCBNext    = OSTCBList;                     
        ptcb->OSTCBPrev    = (OS_TCB *)0;
        if (OSTCBList != (OS_TCB *)0) {
            OSTCBList->OSTCBPrev = ptcb;
        }
        OSTCBList               = ptcb;
        OSRdyGrp               |= ptcb->OSTCBBitY;          
        OSRdyTbl[ptcb->OSTCBY] |= ptcb->OSTCBBitX;
        OSTaskCtr++;                                        
        {OS_CPU_SR_Restore(cpu_sr);};
        return (0u);
    }
    {OS_CPU_SR_Restore(cpu_sr);};
    return (66u);
}
	 	   	  		 			 	    		   		 		 	 	 			 	    		   	 			 	  	 		 				 		  			 		 					 	  	  		      		  	   		      		  	 		 	      		   		 		  	 		 	      		  		  		  
